

let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'files',     'header': ['   History']            },
          \ ]


let g:startify_session_delete_buffers = 1

let g:startify_session_persistence = 1

let g:startify_enable_special = 0

let g:startify_session_delete_buffers = 1

let g:startify_change_to_vcs_root = 1

let g:startify_custom_header= [
    \   '          _  __             _     ',
    \   '         / |/ /__ ___ _  __(_)_ _ ',
    \   '        /    / -_) _ \ |/ / /  '' \',
    \   '       /_/|_/\__/\___/___/_/_/_/_/',
    \    ]
