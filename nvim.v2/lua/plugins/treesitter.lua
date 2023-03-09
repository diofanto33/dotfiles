local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
  ensure_installed = "all", -- Instalar automáticamente los parsers para todos los lenguajes soportados
  highlight = {
    enable = true, -- Habilitar el resaltado de sintaxis utilizando Treesitter
  },
}
