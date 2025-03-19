return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
      { "<leader>e", "<cmd>Neotree reveal float<cr>" },
  },
  opts = {
    sources = { "filesystem", "buffers", "git_status" },
    open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
    filesystem = {
        bind_to_cwd = false,
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
    },
    window = {
      position = "float",
      width = 40,
      mapping_options = {
        noremap = true,
        nowait = true,
      },
      mappings = {
        ["<esc>"] = "close_window",
        ["q"] = "close_window",
        ["l"] = "open",
        ["h"] = "close_node",
        ["<space>"] = "none",
        ["Y"] = {
            function(state)
                local node = state.tree:get_node()
              local path = node:get_id()
              vim.fn.setreg("+", path, "c")
            end,
            desc = "Copy Path to Clipboard",
          },
        ["O"] = {
            function(state)
                require("lazy.util").open(state.tree:get_node().path, { system = true })
            end,
            desc = "Open with System Application",
          },
        ["P"] = { "toggle_preview", config = { use_float = false } },
      },
    },
    popup_border_style = "rounded",
    enable_git_status = true,
    enable_diagnostics = true,
    float = {
      enable = true,
      quit_on_focus_loss = true,
      open_win_config = function()
        local columns = vim.o.columns
        local lines = vim.o.lines
        local width = math.min(columns - 4, math.max(80, columns - 20))
        local height = math.min(lines - 4, math.max(20, lines - 10))
        local col = math.floor(columns - width) / 2
        local row = math.floor(lines - height) / 2
        return {
          relative = "editor",
          border = "rounded",
          width = width,
          height = height,
          row = row,
          col = col,
          style = "minimal",
        }
      end,
    },
  },
}
