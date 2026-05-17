import serial, struct, numpy as np, sounddevice as sd
import matplotlib.pyplot as plt
import scipy.io.wavfile as wav

PORT       = 'COM3'   # 改成你的 COM port
BAUD       = 115200
SAMPLERATE = 16000

ser = serial.Serial(PORT, BAUD, timeout=15)
print("Waiting for audio data...")

frame = 0
while True:
    # Wait for magic header 'PCM!'
    buf = b''
    while buf[-4:] != b'PCM!':
        buf += ser.read(1)

    num_bytes = struct.unpack('<I', ser.read(4))[0]
    print(f"\n[Frame {frame}] Receiving {num_bytes} bytes...")

    raw = ser.read(num_bytes)
    samples = np.frombuffer(raw, dtype=np.int16)
    left    = samples.astype(np.float32) / 32768.0

    # --- 音訊統計 ---
    rms = np.sqrt(np.mean(left ** 2))
    peak = np.max(np.abs(left))
    print(f"  RMS  = {rms:.4f}  (> 0.01 代表有收到聲音)")
    print(f"  Peak = {peak:.4f}  (接近 0 = 無聲, 接近 1 = 有聲音)")

    if peak < 0.001:
        print("  警告: 訊號幾乎為零，可能是麥克風沒有接收到聲音")
    elif rms > 0.01:
        print("  偵測到音訊訊號！")

    # --- 播放 (mono) ---
    print(f"  Playing {len(left)/SAMPLERATE:.2f}s ...")
    sd.play(left, SAMPLERATE)

    # --- 波形圖 ---
    t = np.linspace(0, len(left) / SAMPLERATE, len(left))
    plt.figure(figsize=(10, 3))
    plt.plot(t, left, linewidth=0.5)
    plt.title(f"Frame {frame} - RMS={rms:.4f}  Peak={peak:.4f}")
    plt.xlabel("Time (s)")
    plt.ylabel("Amplitude")
    plt.ylim(-1, 1)
    plt.tight_layout()
    plt.savefig(f"frame_{frame}.png")
    plt.show(block=False)
    plt.pause(0.1)

    # --- 存成 WAV (mono) ---
    wav.write(f"frame_{frame}.wav", SAMPLERATE, samples)
    print(f"  Saved: frame_{frame}.wav")

    sd.wait()
    frame += 1
