-- Establecer atajo de teclado para ir al inicio del archivo
vim.api.nvim_set_keymap("n", "<S-e>", "gg", {noremap = true, silent = true})

-- Asignar tecla "y" para copiar en modo visual
vim.api.nvim_set_keymap("v", "y", "\"+y", {noremap = true, silent = true})

-- Asignar tecla "p" para pegar en modo normal
vim.api.nvim_set_keymap("n", "p", "\"+p", {noremap = true, silent = true})  

-- Para que el copiado y pegado funcione de afuera y hacia adentro de neovim, es necesario xclip

-- Asignar tecla "p" para pegar en modo visual
vim.api.nvim_set_keymap("v", "p", "\"+p", {noremap = true, silent = true})

-- Asignar tecla "o" para cortar en modo visual
vim.api.nvim_set_keymap("v", "o", "\"+delete", {noremap = true, silent = true})

-- Asignar atajo Ctrl+z para undo (volver al estado anterior
vim.api.nvim_set_keymap("n", "<C-z>", "u", {noremap = true, silent = true})
