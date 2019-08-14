all: clean compile

compile:
	emacs --batch --eval '(byte-recompile-directory "~/.emacs.d" 0 1)'

clean:
	find ./ -name '*.elc' | xargs rm
