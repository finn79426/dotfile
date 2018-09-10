#!/bin/zsh
# By : howpwn
# Email : finn79426@gmail.com

ask VIMRC "Update .vimrc? (y/n)"
ask ZSHRC "Update .zshrc? (y/n)"
ask GDBINIT "Update .gdbinit? (y/n)"
ask GIT "Update .gitconfig? (y/n)"
ask SNIPPETS "Update snippets? (y/n)"
ask TEMPLATE "Update Code templates?(y/n)"
ask CRONTAB "Update crontab? (y/n)"

if $VIMRC; then
	cp .vimrc ~/.vimrc
	echo ".vimrc restore complete"
fi


if $ZSHRC; then
	cp .zshrc ~/.zshrc
	echo ".zshrc restore complete"
fi

if $GDBINIT; then
	cp .gdbinit ~/.gdbinit
	echo ".gdbinit restore complete"
fi

if $GIT; then
	cp .gitconfig ~/.gitconfig
	cp .gitignore_global ~/.gitignore_global
	echo ".gitconfig restore complete"
	echo ".gitignore_global restore complete"
fi

if $SNIPPETS; then
	cp -r snippets ~/.vim/
	echo "snippets restore complete"
fi

if $TEMPLATE; then
	cp -r .CodeTemplates ~/.Code_templates
	echo ".CodeTemplates restore complete"
fi

if $CRONTAB; then
	crontab "crontab"
	echo "crontab restore complete"
fi


