#!/usr/bin/env just --justfile

default: 
	just --list

serve:
	cd content && mdbook serve

build:
	cd content && mdbook build

push:
	just build && scp -r content/book/html webedit@lesnake.xyz:/var/www
