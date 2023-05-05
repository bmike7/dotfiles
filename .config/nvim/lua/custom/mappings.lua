local M = {}

local find_documentation = function ()
  vim.lsp.buf.hover()
end

M.general = {
  n = {
    -- fingers are used to reach for this combination (vscode)
    ["<C-p>"] = { ":Telescope find_files <CR>", "Telescope Files" },

    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "Window Left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "Window Right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "Window Down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "Window Up" },

    ["<leader>fd"] = { find_documentation, "Find Documentation" },

    -- floating windows
    ["<leader>lg"] = {
      "<cmd> FloatermNew --height=0.8 --width=0.9 --title=Git lazygit<CR>",
      "Open Lazygit"
    },
    ["<leader>ld"] = {
      "<cmd> FloatermNew --height=0.8 --width=0.9 --title=Docker lazydocker<CR>",
      "Open Lazydocker"
    },
    ["<leader>lp"] = {
      "<cmd> FloatermNew --height=0.8 --width=0.9 --title=PostgreSQL pgcli -h '127.0.0.1' -U gorilla -W -d gorilla<CR>",
      "Open Postgresql Gorilla"
    },

    -- playgrounds/REPL
    ["<leader>pp"] = {
      "<cmd> FloatermNew --height=0.8 --width=0.9 --title=Python python<CR>",
      "Playground: Python"
    },

    ["<leader>tt"] = { "<cmd> TransparentToggle<CR>", "Toggle Transparency" },
  },
}

M.abc = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } }
  },

  n = {
    -- ["<leader>db"] = { toggle_breakpoint, "Toggle Breakpoint" },
    -- ["<leader>dx"] = { close_dap_ui, "Close Debugger" },
  }
}

return M
