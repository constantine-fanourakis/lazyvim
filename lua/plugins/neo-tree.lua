return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
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
