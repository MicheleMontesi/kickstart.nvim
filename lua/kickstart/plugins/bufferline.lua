return {
  'akinsho/bufferline.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('nvim-web-devicons').setup {
      default = true,
    }
    require('bufferline').setup {
      options = {
        separator_style = 'slant',
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level)
          local icon = level:match 'error' and ' ' or ' '
          return ' ' .. icon .. count
        end,
        offsets = {
          {
            filetype = 'NvimTree',
            text = 'File Explorer',
            text_align = 'left',
            separator = true,
          },
        },
        show_buffer_icons = true, -- mostra le icone dei buffer
        show_buffer_close_icons = true,
        show_close_icon = false,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- previene il riordino dei buffer quando vengono chiusi
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = 'id',
      },
    }

    vim.api.nvim_set_keymap('n', '<C-,>', '<cmd>BufferLineCyclePrev<cr>', { noremap = true, silent = true, desc = 'Previous buffer' })
    vim.api.nvim_set_keymap('n', '<C-.>', '<cmd>BufferLineCycleNext<cr>', { noremap = true, silent = true, desc = 'Next buffer' })
    vim.keymap.set('n', '[b', '<cmd>BufferLineCyclePrev<cr>', { noremap = true, silent = true, desc = 'Previous buffer (<C-,>)' })
    vim.keymap.set('n', ']b', '<cmd>BufferLineCycleNext<cr>', { noremap = true, silent = true, desc = 'Next buffer (<C-.>)' })
  end,
}
