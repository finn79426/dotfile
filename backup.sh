#!/bin/zsh

cp ~/.vimrc $(dirname "$0")/.vimrc
echo 'vimrc Done!\n'

cp ~/.zshrc $(dirname "$0")/.zshrc
echo 'zshrc Done!\n'

cp ~/.gdbinit $(dirname "$0")/.gdbinit
echo 'gdbinit Done!\n'

crontab -l > $(dirname "$0")/crontab
echo 'crontab Done!\n'

cp -r ~/.CodeTemplates/ $(dirname "$0")/.CodeTemplates
echo 'Code Templates Done!\n'

cp ~/.gitconfig $(dirname "$0")/.gitconfig
echo 'gitignore Done!\n'



echo 'ALL Done!\nSave to :' $(dirname "$0")

print "\n"

ls -al --color=auto
