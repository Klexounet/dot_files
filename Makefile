.PHONY: installs bat prettyping git-diff-so-fancy fzf vscode system


SRC_DIR=~/repos
ARCHITECTURE := $(shell dpkg --print-architecture)

installs:
	sudo apt update && sudo apt install -y \
		curl wget \
		git vim tmux \
		jq htop ncdu stow \
		keepassx \
		openvpn openvpn-server \
		ffmpeg

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
	sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
	sudo apt install -y code

system:
	stow -t $$HOME bash
	stow -t $$HOME docker
	stow -t $$HOME git
	stow -t $$HOME pylint
	stow -t $$HOME tmux
	stow -t $$HOME vim

$(SRC_DIR):
	mkdir $(SRC_DIR)
