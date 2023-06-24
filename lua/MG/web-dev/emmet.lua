-- Enable in different mode
-- If you don't want to enable emmet in all modes, you can use set these options in vimrc:

-- vim.g:user_emmet_mode("n") -- "only enable normal mode functions.
vim.cmd([[let g:user_emmet_mode = "inv"]]) -- "enable all functions, which is equal to
-- vim.g:user_emmet_mode("a") -- "enable all function in all mode.

-- Enable just for html/css
vim.cmd([[
  let g:user_emmet_install_global = 0
  autocmd FileType html,css EmmetInstall
]])

-- Redefine trigger key
-- To remap the default <C-Y> leader:

vim.cmd([[
let g:user_emmet_leader_key='<M-y>'
]])
