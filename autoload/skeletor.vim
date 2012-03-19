" A script that loads skeletons for known filetypes.
" Maintainer: Gustaf Sjoberg <gs@pipsq.com>

let s:skeldir = 'skeletons/'

function! skeletor#LoadSkeletons()
    if &filetype == ''
        echo "No filetype set."
        return ''
    endif

    let fnames = split(globpath(&runtimepath, s:skeldir.&filetype.'/*'))
    let choices = ["Select skeleton to load:"]
    let index = 1

    for fname in fnames
        call add(choices, printf("%s) %s", index, fnamemodify(fname, ':t')))
        let index += 1
    endfor

    if len(fnames)
        let choice = inputlist(choices)
        if choice > 0 && choice <= len(fnames)
            let cpoptions = &cpoptions
            set cpoptions-=a
            silent execute '0r '.fnames[choice - 1]
            let cpoptions = cpoptions
        endif
    else
        echo "No skeleton files available for filetype '".&filetype."'."
    endif
endfunction
