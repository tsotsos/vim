"" Go configurations
if &runtimepath =~ 'vim-go'
    let g:go_fmt_command = "goimports" "Run goimports along gofmt on each save 
    let g:go_auto_type_info = 1        "Gets signature/type info for object
    let g:go_highlight_types = 1
    let g:go_highlight_fields = 1
    let g:go_highlight_functions = 1
    let g:go_highlight_function_calls = 1
    let g:go_highlight_extra_types = 1
    let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
    let g:go_metalinter_autosave = 1
    let g:go_metalinter_autosave_enabled = ['vet', 'golint']
    let g:go_metalinter_deadline = "5s"
endif

