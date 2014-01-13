.PHONY: clean

default: ~/.vimrc

~/.vimrc: 
	@mkdir -p ~/.vim
	@mkdir -p ~/.vim/bundle
	git clone https://github.com/tpope/vim-pathogen.git ~/.vim/bundle/vim-pathogen
	git clone https://github.com/mhinz/vim-signify.git ~/.vim/bundle/vim-signify
	git clone https://github.com/bling/vim-airline.git ~/.vim/bundle/vim-airline
	git clone https://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible
	cp vimrc ~/.vimrc

clean:
	rm -rf ~/.vim/bundle ~/.vimrc
