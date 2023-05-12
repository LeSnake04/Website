#!/usr/bin/env just --justfile

default: 
	just --list

serve:
	cd content && mdbook serve

build:
	cd content && mdbook build

alias b := book
@book cmd:
	cd content && mdbook $1

open:
	xdg-open content/book/html/index.html

push:
	just build && scp -r content/book/html webedit@lesnake.xyz:/var/www
