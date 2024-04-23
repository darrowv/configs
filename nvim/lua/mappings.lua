require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "t" }, "<leader>i", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "Terminal Toggle Floating term" })

-- harpoon mappings

local harpoon = require "harpoon"

harpoon:setup()

map("n", "<leader>a", function()
  harpoon:list():add()
end, { desc = "Add file to harpoon list" })

map("n", "<C-h>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Toggle harpoon list" })

-- map("n", "<leader>t", function()
-- 	harpoon:list():select(1)
-- end, { desc = "Select 1st file" })
--
-- map("n", "<leader>y", function()
-- 	harpoon:list():select(2)
-- end, { desc = "Select 2nd file" })

-- conform mappings

local conform = require "conform"

map({ "n", "v" }, "<leader>s", function()
  conform.format {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  }
end, { desc = "Format file or range (in visual mode)" })

-- nvim-lint mappings

local lint = require "lint"

map("n", "<leader>ll", function()
  lint.try_lint()
end, { desc = "Trigger linting for current file" })
