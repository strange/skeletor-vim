# Skeletor

Vim skeletons; about as simple as they come.


## Installation

### Preferred Method

Install [Vundle] and add `Bundle 'strange/skeletor-vim'` to your `.vimrc`.

### Manual Install

Copy `autoload/skeletor.vim` and `plugin/skeletor.vim` into corresponding
directories in your vim plugin directory.


## Usage

`:Skeletor` brings up a list of all skeletons available for the filetype of
the currently loaded file.

Something like the following in your .vimrc might be nice:

    noremap <leader>s :Skeletor<CR>


### Skeletons

Skeletons are just regular files (or symlinks) located at a special location.
They can have any name and any extension. The name will be used to identify
the skeleton in the list displayed by `:Skeletor`; the extension will be
ignored (but is nice to have as you get syntax highlighting etc when you edit
skeletons).

Skeletons must be placed in directories matching vim's filetypes. These
directories must be placed in the directory `skeletons` in your
`runtimetpath`.

This is how you'd create a skeleton for a html form, for example:

1. Make sure that the directory `skeletons`, in your `runtimepath`, exists.
2. Create the directory `html` in the `skeletons`-directory. 
3. Write your form to a file called `form.html` in your `html`-directory.

So, on a standard unix installation you'd put your code into the file
`~/.vim/skeletons/html/form.html`.


[Vundle]:http://github.com/gmarik/vundle
