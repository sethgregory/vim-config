.PHONY: clean

default: ~/.vimrc

~/.vimrc: ~/.vim/bundle/vundle vimrc
	mkdir ~/.vim/tmp
	mkdir ~/.vim/backup
	cp vimrc ~/.vimrc
	vim +BundleInstall +qall
	echo " \" change the stupid gray background " >> ~/.vim/bundle/jellybeans.vim/colors/jellybeans.vim
	echo "highlight Normal ctermbg=None" >> ~/.vim/bundle/jellybeans.vim/colors/jellybeans.vim

~/.vim/bundle/vundle:
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

clean:
	rm -rf ~/.vim/bundle ~/.vimrc
