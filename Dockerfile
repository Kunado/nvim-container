FROM ubuntu:latest

ARG NVIM_BIN_URL=https://github.com/neovim/neovim/releases/download/v0.5.1/nvim.appimage

run apt-get update -y && \
    apt-get install -y software-properties-common && \
    apt-add-repository -y ppa:neovim-ppa/stable && \
    apt-get update -y && \
    apt-get install -y \
    curl \
    git \
    language-pack-ja-base \
    language-pack-ja \
    bash \
    wget

run wget https://github.com/neovim/neovim/releases/download/v0.5.1/nvim-linux64.tar.gz && \
    tar xzvf nvim-linux64.tar.gz && \
    mv nvim-linux64/bin/nvim /usr/local/bin/ && \
    mv nvim-linux64/share/nvim /usr/share/ && \
    rm -rf nvim-linux64 nvim-linux64.tar.gz

run curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh && \
    mkdir /dein && \
    sh ./installer.sh /dein/.cache/dein && \
    rm /installer.sh

WORKDIR /home/

env lang="ja_jp.utf-8" language=ja_jp:ja"" lc_all="ja_jp.utf-8" XDG_CONFIG_HOME=/home/.config
