return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.cmd [[
    " Pdf viewer
    let g:vimtex_view_method = "zathura"

    " Ignoring some warning in compilation 
    let g:vimtex_quickfix_ignore_filters = [
        \ 'LaTeX hooks Warning',
        \ 'Underfull \\hbox',
        \ 'Overfull \\hbox',
        \ 'LaTeX Warning: .\+ float specifier changed to',
        \ 'Package siunitx Warning: Detected the "physics" package:',
        \ 'Package hyperref Warning: Token not allowed in a PDF string',
        \ 'Fatal error occurred, no output PDF file produced!',
        \ 'LaTeX Font Warning:'
        \ ]

    " Correct indentation for \item    
    let g:vimtex_indent_lists = []
    
    " Toggle
    "let g:vimtex_env_toggle_math_map = {
    "    \ '$': '\[',
    "    \ '\[': 'align*',
    "    \ }
  ]]
    vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_syntax_enable = 1
    vim.g.vimtex_imaps_enabled = 0
  end,
}
