FROM debian:latest

# Obligatory update
RUN apt-get update

# Install VNC and X11
RUN apt-get install x11vnc -y
RUN apt-get install xvfb -y
RUN apt-get install fluxbox -y
RUN apt-get install wmctrl -y

# Add user for chrome
RUN useradd -m chrome-user
WORKDIR /home/chrome-user

# Copy and run installation script
COPY get-chromium.sh .
RUN ["bash", "-e", "./get-chromium.sh"]

# Set user and environment variables
USER chrome-user
WORKDIR /home/chrome-user

# Copy scripts
COPY run-chromium.sh .
COPY bootstrap.sh .

# Run bootstrap script
CMD ["bash", "./bootstrap.sh"]