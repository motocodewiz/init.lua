local options = {
	lsp_fallback = true,

	formatters_by_ft = {
		lua = { "stylua" },

		javascript = { "prettier" },
		css = { "prettier" },
		html = { "prettier" },

    puppet = { "puppet-lint" },

    python = { "black" },

		sh = { "shfmt" },
    go = { "goimports", "gofmt" },
    rust = { "rustfmt" },
	},
  keys = {
    "<leader>ft",
    function ()
      require("conform").format({ async = true, lsp_fallback = true})
    end,
    mode = "",
    desc = "Format buffer",
 },

  -- adding same formatter for multiple filetypes can look too much work for some
  -- instead of the above code you could just use a loop! the config is just a table after all!

	-- format_on_save = {
	--   -- These options will be passed to conform.format()
	--   timeout_ms = 500,
	--   lsp_fallback = true,
	-- },
}

require("conform").setup(options)
