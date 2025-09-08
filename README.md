# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

Personal Config. 

### Installation
To install this config, ensure `neovim` >= 0.9.0. To do this, you can get the latest version of `neovim` for your OS:
```bashrc
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod u+x nvim-linux-x86_64.appimage
./nvim-linux-x86_64.appimage

sudo mkdir -p /opt/nvim  
sudo mv nvim-linux-x86_64.appimage /opt/nvim/nvim
export PATH="$PATH:/opt/nvim/"
```
Furthermore, you can add the `PATH` variable export to ensure CLI command works each startup. 

Then, do the following:
```bashrc
mkdir ~/.config/
cd ~/.config
git clone https://github.com/fpham0701/nvim.git 
nvim
```
This should then open up `nvim` and install all the packages/dependencies used in this config. 
