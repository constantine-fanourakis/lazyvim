return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[
        ███    ██ ███████  ██████  ██    ██ ██ ███    ███
        ████   ██ ██      ██    ██ ██    ██ ██ ████  ████
        ██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██
        ██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██
        ██   ████ ███████  ██████    ████   ██ ██      ██
        ]],
      },
    },
  },
  keys = {
    { "<leader><space>", function() Snacks.picker.buffers() end, desc = "Buffers" },
  },
}
