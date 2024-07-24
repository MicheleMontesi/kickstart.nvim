return {
  'akinsho/bufferline.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('bufferline').setup {
      options = {
        separator_style = 'slant',
      },
    }

    vim.api.nvim_set_keymap('n', '<C-,>', '<cmd>BufferLineCyclePrev<cr>', { noremap = true, silent = true, desc = 'Previous buffer' })
    vim.api.nvim_set_keymap('n', '<C-.>', '<cmd>BufferLineCycleNext<cr>', { noremap = true, silent = true, desc = 'Next buffer' })
    vim.keymap.set('n', '[b', '<cmd>BufferLineCyclePrev<cr>', { noremap = true, silent = true, desc = 'Previous buffer (<C-,>)' })
    vim.keymap.set('n', ']b', '<cmd>BufferLineCycleNext<cr>', { noremap = true, silent = true, desc = 'Next buffer (<C-.>)' })
  end,
}
