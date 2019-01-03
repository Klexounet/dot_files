.PHONY: installs bat prettyping git-diff-so-fancy fzf vscode system

URL_FONT=https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/InconsolataGo/Regular/complete/InconsolataGo%20Nerd%20Font%20Complete%20Mono.ttf
DST_FONT=/usr/local/share/fonts/InconsolataGo-Nerd-Font-Complete-Mono.ttf

SRC_DIR=~/repos
ARCHITECTURE := $(shell dpkg --print-architecture)

installs:
	sudo apt update && sudo apt install -y \
		curl wget \
		git vim tmux \
		jq htop ncdu stow \
		keepassx \
		openvpn openvpn-server \
		ffmpeg vlc

font: $(DST_FONT)
$(DST_FONT):
	sudo curl $(URL_FONT) -o $(DST_FONT)
	fc-cache -f -v

docker-install:
	sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo add-apt-repository "deb [arch=$(ARCHITECTURE)] https://download.docker.com/linux/ubuntu bionic stable"
	sudo apt update
	sudo apt install -y docker-ce
	sudo usermod -aG docker ${USER}

bat:
	wget https://github.com/sharkdp/bat/releases/download/v0.9.0/bat_0.9.0_$(ARCHITECTURE).deb
	sudo dpkg -i bat_0.9.0_$(ARCHITECTURE).deb
	rm bat_0.9.0_$(ARCHITECTURE).deb

prettyping:
	curl -O https://raw.githubusercontent.com/denilsonsa/prettyping/master/prettyping
	chmod +x prettyping
	sudo mv prettyping /bin/

git-diff-so-fancy:
	curl -O https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy
	chmod +x diff-so-fancy
	sudo mv diff-so-fancy /bin/

fzf: $(SRC_DIR)
	git clone --depth 1 https://github.com/junegunn/fzf.git $(SRC_DIR)/.fzf
	$(SRC_DIR)/.fzf/install

vscode:
	sudo apt install -y software-properties-common apt-transport-https wget
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
	sudo add-apt-repository "deb [arch=$(ARCHITECTURE)] https://packages.microsoft.com/repos/vscode stable main"
	sudo apt install -y code

grub-customizer:
	sudo add-apt-repository ppa:danielrichter2007/grub-customizer
	sudo apt install -y grub-customizer

system:
	stow -t $$HOME bash
	stow -t $$HOME docker
	stow -t $$HOME git
	stow -t $$HOME pylint
	stow -t $$HOME tmux
	stow -t $$HOME vim

$(SRC_DIR):
	mkdir $(SRC_DIR)
