import serial, struct, numpy as np, sounddevice as sd

PORT  = 'COM?'   # Change to your COM port
BAUD  = 115200
SAMPLERATE = 16000

ser = serial.Serial(PORT, BAUD, timeout=15)
print("Waiting for audio data from serial port...")

while True:
    # Wait for magic header 'PCM!'
    buf = b''
    while buf[-4:] != b'PCM!':
        buf += ser.read(1)

    # Read 4 bytes for data size
    num_bytes = struct.unpack('<I', ser.read(4))[0]
    print(f"Receiving {num_bytes} bytes...")

    raw = ser.read(num_bytes)
    samples = np.frombuffer(raw, dtype=np.int16).astype(np.float32) / 32768.0
    stereo  = samples.reshape(-1, 2)

    print(f"Playing {len(stereo)/SAMPLERATE:.2f} seconds of audio...")
    sd.play(stereo, SAMPLERATE)
    sd.wait()
    print("Done, waiting for next...\n")
