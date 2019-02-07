set -g -x fish_greeting ''
set --export EDITOR "vim"

source /home/florian/anaconda3/etc/fish/conf.d/conda.fish

set -x PATH /home/florian/anaconda3/bin $PATH
set -x PATH /home/florian/.cargo/bin $PATH
