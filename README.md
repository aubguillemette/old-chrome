# old-chrome
Fork of [awinabi/chrome-docker](https://github.com/awinabi/chrome-docker).
Run an old Chromium version, connect to it using VNC.

## How to change Chromium version / How to run something else entirely
- See [HowToGetAnotherChromiumVersion.md]() to get another Chromium version in the container
- Edit ```get-chromium.sh``` if you want to install something else
- Edit ```run-chromium.sh``` if you want to run something else / change the Chromium options
- Press play

## How to press play (How to run)
- Build it
```
# docker build -t your-image-name:your-version-number, ex:
docker build -t old-chrome:106 .
```
- Run it
```
# docker run -p your-image-name:your-version-number, ex:
sudo docker run -p 5900:5900 old-chrome:106
```
- Connect to it with VNC
- Rock n' roll