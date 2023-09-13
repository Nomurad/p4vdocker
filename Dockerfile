FROM ubuntu:latest

RUN apt-get update 
RUN apt-get install -y fish
RUN apt-get install -y wget curl unzip dnsutils 
RUN apt-get install -y build-essential

# RUN wget -q https://package.perforce.com/perforce.pubkey -O - | apt-key add - 
# RUN echo 'deb http://package.perforce.com/apt/ubuntu focal release' > /etc/apt/sources.list.d/perforce.list
# RUN apt-get update && apt-get install -y helix-p4d

# libs install
RUN apt-get install -y libxcb-xinerama0 libnss3 libxcb-shape0 libxkbcommon0 libxrandr2 libxtst6 libxi6 libxcursor1 \
     libx11-xcb1 libfontconfig1 libfreetype6 libxrender1 libxdamage1 libxcomposite1 \
     libdbus-1-3 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 \
     libxcb-sync1 libxcb-xfixes0 libxcb-xkb1 libxkbcommon-x11-0 

RUN wget https://www.perforce.com/downloads/perforce/r22.1/bin.linux26x86_64/p4v.tgz -O ~/p4v.tgz
RUN cd ~ ; tar xvf ~/p4v.tgz


