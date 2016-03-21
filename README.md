This repository contains code for my [blog](http://blog.ankush.io).

## Installation

* Install [Hugo](http://gohugo.io/).

* For code blocks to syntax highlight correctly, make sure you have
[pygments](http://pygments.org/) installed on your system.

* For CSS/Javascript minification, install `gulp`.

## Instructions

The theme is in `themes/skeleton`. The CSS is present in
`themes/skeleton/static/css/main.css`. Any changes to the theme mostly go in
`themes/skeleton/static/css/main.css`.

To compile the css, run `gulp` in `themes/skeleton`. That generates the
`themes/skeleton/static/styles.css` and `themes/skeleton/static/styles.min.css`

To run it locally, use the `run.sh` script and to release, run the `release.sh`
script

### Submodules

Run the `fix-submodule.sh` script to fix submodule issues. It cleanly sets up
the submodules.

### Wrapping up lines.

While writing Markdown, I end up writing very long lines and it looks very
ugly, so I use `pbpaste | fold -w 80 -s | sed -e 's/[[:space:]]*$//' | pbcopy`
to cleanly format my Markdown documents. `pbpaste` pastes my clipboard, `fold`
folds the text to a maximum of 80 characters per line, `sed` removes trailing
whitespaces, and `pbcopy` finally puts it back in my clipboard


## Ackowledgements

* **[Nishant Totla](https://github.com/nishanttotla/)**, from whom I forked
this hugo blog skeleton.
* **[Prakhar Srivastav](https://github.com/prakhar1989/)** : For the original
theme design

