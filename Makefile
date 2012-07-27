.PHONY: clean

default: ~/.vimrc

~/.vimrc: ~/.vim/bundle/vundle vimrc
	mkdir ~/.vim/tmp
	mkdir ~/.vim/backup
	cp vimrc ~/.vimrc
	vim +BundleInstall +qall

~/.vim/bundle/vundle:
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

clean:
	rm -rf ~/.vim/bundle ~/.vimrc
