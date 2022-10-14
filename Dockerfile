FROM kalilinux/kali-rolling
RUN apt update && apt install -y \
git \
vim \
gawk \
fzf
WORKDIR /zkvr
ADD . .
RUN dpkg -i zet/20221011145143/bat_0.22.1_amd64.deb
ENTRYPOINT [ "./zc", "menu" ]
