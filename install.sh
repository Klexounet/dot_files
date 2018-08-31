
sudo apt install \
    jq \
    htop \
    ncdu \
    wget

# bat
wget https://github.com/sharkdp/bat/releases/download/v0.6.0/bat_0.6.0_i386.deb -o /tmp/bat.deb
sudo dpkg -i /tmp/bat.deb

# prettyping
curl -O https://raw.githubusercontent.com/denilsonsa/prettyping/master/prettyping
chmod +x prettyping
sudo mv prettyping /bin/

# git diff-so-fancy
curl -O https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy
chmod +x diff-so-fancy
sudo mv diff-so-fancy /bin/

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# VSCode
wget https://go.microsoft.com/fwlink/?LinkID=760868 -o /tmp/vscode.deb
sudo dpkg -i /tmp/vscode.deb
sudo apt-get install -f
