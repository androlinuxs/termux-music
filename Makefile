install:
	cp termux-music $(PREFIX)/bin/termux-music

pypi:
	rm -rf dist *.egg*
	python3 -m build
	python -m twine upload dist/*

.PHONY: install pypi
