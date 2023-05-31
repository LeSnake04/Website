#!/usr/bin/env just --justfile
set positional-arguments

default: 
	just --list

serve:
	just b serve

build:
	cd content && mdbook build

alias b := book
@book cmd:
	cd content && mdbook $1

open:
	xdg-open content/book/html/index.html

push:
	just build && scp -r content/book/html webedit@lesnake.xyz:/var/www
