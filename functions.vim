" Functions

if !exists('*s:setupWrapping')
  function s:setupWrapping()
    set wrap
    set wm=2
    set textwidth=79
  endfunction
endif

function GeneralSyntax()
	execute "set colorcolumn=" . join(range(81,335), ',')
	let &colorcolumn="80,".join(range(120,999),",")
	" Highlight trailing spaces
	" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
	highlight ExtraWhitespace ctermbg=red guibg=#ff6961
	match ExtraWhitespace /\s\+$/
	autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
	autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
	autocmd InsertLeave * match ExtraWhitespace /\s\+$/
	autocmd BufWinLeave * call clearmatches()
endfunction

function Plugin_loaded(plugin)
  if isdirectory(g:plug_home . "/" . a:plugin . ".vim")
    \ && index(keys(g:plugs), a:plugin . '.vim') >=0
    return 1
  else
    return 0
  endif
endfunction
