#!/bin/bash

# - If you want to change the version of Chromium, read HowToGetAnotherChromiumVersion.md
# - If you want to install something else than Chromium do it here
# - (or do whatever you want, your container your rules)

# Install prerequisites
apt-get install curl -y
apt-get install unzip -y

# Install dependencies for Chrome
apt-get install libglib2.0-0 -y
apt-get install libnss3 -y
apt-get install libatk1.0-0 -y
apt-get install libatk-bridge2.0-0 -y
apt-get install libcups2 -y
apt-get install libdrm2 -y
apt-get install libxkbcommon0 -y
apt-get install libxcomposite1 -y
apt-get install libxdamage1 -y
apt-get install libxfixes3 -y
apt-get install libxrandr2 -y
apt-get install libgbm1 -y
apt-get install libpango-1.0-0 -y
apt-get install libpangocairo-1.0-0 -y
apt-get install libasound2 -y

# Download and extract Chromium
curl -o chrome.zip "https://www.googleapis.com/download/storage/v1/b/chromium-browser-snapshots/o/Linux_x64%2F1036826%2Fchrome-linux.zip?generation=1660863194027156&alt=media"
unzip chrome.zip