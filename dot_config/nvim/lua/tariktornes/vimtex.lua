-- PDF Viewer:
-- http://manpages.ubuntu.com/manpages/trusty/man5/zathurarc.5.html
vim.g['vimtex_view_method'] = 'skim'
--vim.g['vimtex_quickfix_mode'] =0

-- Ignore mappings
--vim.g['vimtex_mappings_enabled'] = 0

-- Auto Indent
--vim.g['vimtex_indent_enabled'] = 0
 

-- Syntax highlighting
vim.g['vimtex_syntax_enabled'] = 1

-- Error suppression:
-- https://github.com/lervag/vimtex/blob/master/doc/vimtex.txt

vim.g['vimtex_log_ignore'] = ({
  'Underfull',
  'Overfull',
  'specifier changed to',
  'Token not allowed in a PDF string',
})


vim.g.vimtex_compiler_latexmk = {
    options = {
        "-pdflatex='pdflatex -interaction=nonstopmode -synctex=1 %O %S'",
        "-pdf",
        "-bibtex", -- Add this line if not already present
    },
    executable = 'latexmk',
}

vim.g['vimtex_context_pdf_viewer'] = 'skim'
