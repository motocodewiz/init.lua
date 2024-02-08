local options = {}
options.copilot = {
  suggestions = {
    enable = false,
  },
  panel = {
    enable = false,
  },
}

require("copilot").setup(options)
