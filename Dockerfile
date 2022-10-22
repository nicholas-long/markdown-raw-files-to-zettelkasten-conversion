FROM kalilinux/kali-rolling
RUN apt update && apt install -y \
git \
vim \
gawk \
tmux \
fzf
WORKDIR /zkvr
ADD . .
RUN dpkg -i zet/20221011145143/bat_0.22.1_amd64.deb

ADD zet/20221022000131/tmux.conf /etc/tmux.conf

ENTRYPOINT [ "tmux", "new", "./zc menu" ]
# used -u option before to fix tmux docker issues, might be useful
