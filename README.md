# neoVim configuration

Yet another (neo)Vim configuration. Almost all plug-ins are supported on Vim too, except CoC. If you are going to use Vim check [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe) instead.



### Included

####  Code Comments

[Vim-doge](https://github.com/kkoomen/vim-doge). Supports: C (both doxygen and kernelDoc), C++, Python, PHP, BASH and more.

#### Languages

* Python. Using [python-mode]()

### Install

Export Vim Dir and VimInt variables to your Shell.

```bash
export VIMDIR=$HOME/.vim
export MYVIMRC=$VIMDIR/vimrc
export VIMINIT=":set runtimepath+=$VIMDIR|:set packpath+=$VIMDIR|:source $MYVIMRC"
```



