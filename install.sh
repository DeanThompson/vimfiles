#/bin/sh

if [ ! -e $HOME/.vim/bundle/Vundle.vim ]; then
    git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/Vundle.vim
fi

system_shell=$SHELL
export SHELL="/bin/sh"
vim +BundleInstall! +BundleClean +qall
export SHELL=$system_shell
