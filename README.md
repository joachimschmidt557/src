# src

A small POSIX `sh` script which manages source directories for you.

## Features

* Simple `.srcfile` syntax
* Support for git repositories, tarballs and zip archives
* Compare the actual state of a directory with the content the srcfile dictates

## Get started

``` shell
$ git clone https://github.com/joachimschmidt557/src
$ cd src
$ sudo make install
```

## Usage

```
Usage: src [COMMAND]

Commands:
	a, add		Add a source
	d, diff		Compare actual state of directory with wanted state
	i, install	Install a copy of this script into the current directory
	ls, list	List managed directories
	rm, remove	Remove a source directory
	u, update	Update source directory

Flags:
	--help, -h	Displays this help
	--version, -v	Show version and exit
```

## Use Cases

### Many source repositories

If you like to keep track of source directories (git repositories and tarballs)
then src will help you with keeping track of these. In addition, when moving to
a new machine, you can just copy your `.srcfile` and type `src u` and you're all
set.

### Alternative to git submodules

When other sources need to be embedded in a project, `src` can help out. Just
create a `.srcfile` with the dependencies and run `src u` whenever you need to
initialize or update the dependencies. With `src i` src can replicate itself
into the current working directory for others to use. It is also possible to
quickly generate `.gitignore` files for the dependencies with `src ls >
.gitignore`
