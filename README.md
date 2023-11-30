"Dotfiles" -- those little configuration files for your shell, command-line tools, editor, etc., can become a real mess. Every dev project repository you clone off GitHub, in its README for getting it setup to build, run, and test, seemingly wants you to go `echo "..." <<` a bunch of new stuff onto your `.zshrc` (or `.bashrc` if the project is a bit older), without thinking to ask your permission, or whether you've already done it before, or maybe have other projects you're working with lately that need environment variables with those same names.

This repository presents some simple tools I've cobbled together for reclaiming some sanity in my shell config. Things that help me connect my dots. I recommend forking this repository for yourself if so inclined, and replacing the contents of `home` with your own dotfiles.

# `./link`
It makes sense to keep your dotfiles under version control, but usually they have to be found in your home directory. This simple script lets me keep them in the `home` directory within this repository and quickly symlink to them in the "home" directory. It is used on the infrequent occasions that I am setting these dotfiles up on a new machine or adding a new dotfile.

# `home/.gitignore_global`
Replace with your own `.gitignore_global` but add `.cdrc` to it if you want to use `.cdrc` files. More on that below.

# `home/.zshrc`
Replace with your own `.zshrc` or `.bashrc` but consider adding the top 4 lines to it to for setup of this `dots` repository and the `.cdrc` thing. You fish-shell or c-shell folks can figure out the right name and syntax for yours.

# `util/cdrc_setup`
Rather than clutter up `.zshrc` and its cousins (and by extension your shell environment itself) for things specific to a particular project, why not keep the configs you need separately with the project that needs them? This little tidbit of code is mostly ripped off from setup documentation for an old version of `rvm`. It caused `rvm` to be invoked and fed the desired ruby version number from a file called `.rvmrc` (if present), whenever you `cd` into the project directory. I thought this was a brilliantly underappreciated idea with more general utility to it. My version of it found here simply runs whatever you put in a file called `.cdrc` (and `cats` it out to remind you what it's doing). Keep its name in your `.gitignore_global` to help you avoid accidentally pushing it to `origin` or wherever.

`util` is also a good place to consider keeping some common bits of config so as to modularize your dotfiles.

Enjoy, suggest, pull-request at will.