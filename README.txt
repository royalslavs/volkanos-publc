VOLKANOS

Single-purpose Steam Link Android web runner.

Startup:
1. Wait for Android bridge.
2. Set TV/desktop profile, 1920x1080 landscape.
3. Read bundled Steam Link APK.
4. Show download progress and timestamped logs.
5. POST APK to /api/install using multipart field "apk".
6. Launch com.valvesoftware.steamlink.
7. Connect to /api/display-video at 1080p/30fps.
8. Forward mouse/touch and keyboard input.

APK size: 132,207,126 bytes
APK SHA-256: 379396e508afd25de7bd3a8bc79ec5da0462e2e9cbf8e47035ce5149b30db459

Designed for the upstream:
https://github.com/nickprice101/web-android-emulator

Put this VOLKANOS directory inside that repository and run:
docker compose -f docker-compose.yml -f VOLKANOS/docker-compose.override.yml up --build

Open port 18080.

The supplied environment cannot run Docker/KVM/Android Emulator, so a real
Steam Link boot could not honestly be claimed here. The frontend is wired to
the actual emulator API rather than pretending a static webpage can execute an
APK by itself.
