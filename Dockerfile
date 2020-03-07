# https://www.kali.org/docs/containers/official-kalilinux-docker-images/
FROM kalilinux/kali-rolling

RUN apt update \
    && apt upgrade -y \
    && apt dist-upgrade -y \
    && apt install -y \
    exploitdb \
    exploitdb-bin-sploits \
    git \
    gdb \
    gobuster \
    hashcat \
    hydra \
    man-db \
    minicom \
    nasm \
    nmap \
    sqlmap \
    sslscan \
    wordlists \
    metasploit-framework \
    python-pip \
    wpscan \
    nikto \ 
    golismero \
    tor

RUN  pip install pwntools

RUN mkdir /root/.ssh/ \
    && touch /root/.ssh/known_hosts \
    && ssh-keyscan bitbucket.org >> /root/.ssh/known_hosts \
    && ssh-keyscan github.com >> /root/.ssh/known_hosts

WORKDIR /root/

EXPOSE 80/tcp 443/tcp