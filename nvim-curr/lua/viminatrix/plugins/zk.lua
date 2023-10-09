return {
  'renerocksai/telekasten.nvim',
  config = function()
    local home = vim.fn.expand("~/note-vault")
    require('telekasten').setup({
      home                = home,
      -- dir names for special notes (absolute path or subdir name)
      dailies             = home .. '/' .. 'dailies',
      weeklies            = home .. '/' .. 'weeklies',
      templates           = home .. '/' .. 'templates',
      image_subdir        = "images",

      template_new_note   = home .. '/' .. 'templates/new_note.md',
      template_new_daily  = home .. '/' .. 'templates/daily.md',
      template_new_weekly = home .. '/' .. 'templates/weekly.md',

      -- image link style
      -- wiki:     ![[image name]]
      -- markdown: ![](image_subdir/xxxxx.png)
      image_link_style    = "markdown",
    })

    -- Launch panel if nothing is typed after <leader>z
    vim.keymap.set("n", "<leader>z", "<cmd>Telekasten panel<CR>")

    -- Most used functions
    vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
    vim.keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
    vim.keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>")
    vim.keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
    vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<CR>")
    vim.keymap.set("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>")
    vim.keymap.set("n", "<leader>zI", "<cmd>Telekasten insert_img_link<CR>")

    -- Call insert link automatically when we start typing a link
    vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")
  end,
}
