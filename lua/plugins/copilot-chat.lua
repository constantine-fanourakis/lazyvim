return {
  "CopilotC-Nvim/CopilotChat.nvim",
  keys = {
    {
      "<leader>am",
      function()
        return require("CopilotChat").select_model()
      end,
      desc = "Select Model (CopilotChat)",
      mode = { "n", "v" },
    },
  },
}
