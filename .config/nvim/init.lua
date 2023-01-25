-- Establecer números de línea
vim.api.nvim_command("set number")

-- Establecer tab de 4 espacios
vim.api.nvim_command("set tabstop=4")
vim.api.nvim_command("set shiftwidth=4")

-- Establecer fondo negro
vim.api.nvim_command("set background=dark")

-- Establecer tema "pablo"
vim.api.nvim_command("colorscheme pablo")

-- Establecer atajo de teclado para ir al inicio del archivo
vim.api.nvim_set_keymap("n", "<S-e>", "gg", {noremap = true, silent = true})

-- Asignar tecla "y" para copiar en modo visual
vim.api.nvim_set_keymap("v", "y", "\"+y", {noremap = true, silent = true})

-- Asignar tecla "p" para pegar en modo normal
vim.api.nvim_set_keymap("n", "p", "\"+p", {noremap = true, silent = true})

-- Asignar tecla "p" para pegar en modo visual
vim.api.nvim_set_keymap("v", "p", "\"+p", {noremap = true, silent = true})
