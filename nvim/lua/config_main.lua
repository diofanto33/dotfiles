 vim.api.nvim_command("set guicursor=a:blinkon200")
--vim.api.nvim_command("set guicursor=i:bar-blinkon0")
--vim.api.nvim_command("set guicursor=blinkon0")
--vim.api.nvim_command("set blinkon=200")
--vim.api.nvim_command("set cursorline")
--vim.api.nvim_command("set cursorcolumn")
-- Establecer números de línea
vim.api.nvim_command("set number")

-- Establecer tab de 4 espacios
vim.api.nvim_command("set tabstop=4")
vim.api.nvim_command("set shiftwidth=4")

-- Establecer fondo negro
-- vim.api.nvim_command("set background=dark")

-- Establecer atajo de teclado para ir al inicio del archivo
vim.api.nvim_set_keymap("n", "<S-e>", "gg", {noremap = true, silent = true})

-- Asignar tecla "y" para copiar en modo visual
vim.api.nvim_set_keymap("v", "y", "\"+y", {noremap = true, silent = true})

-- Asignar tecla "p" para pegar en modo normal
vim.api.nvim_set_keymap("n", "p", "\"+p", {noremap = true, silent = true})

-- Asignar tecla "p" para pegar en modo visual
vim.api.nvim_set_keymap("v", "p", "\"+p", {noremap = true, silent = true})

-- Asignar tecla "o" para cortar en modo visual
vim.api.nvim_set_keymap("v", "o", "\"+delete", {noremap = true, silent = true})

-- Asignar atajo Ctrl+z para undo (volver al estado anterior
vim.api.nvim_set_keymap("n", "<C-z>", "u", {noremap = true, silent = true})

-- Establecer tema "pablo"
 vim.api.nvim_command("colorscheme pablo")

-- Establecer color de números de línea amarillo
vim.api.nvim_command("highlight LineNr ctermfg=yellow guifg=yellow")
