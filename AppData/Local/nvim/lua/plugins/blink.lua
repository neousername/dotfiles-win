return {
	"saghen/blink.cmp",
	version = "1.*",

	dependencies = {
		-- Optional: provides snippets for the snippet source
		"rafamadriz/friendly-snippets",
	},

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = "default" },

		completion = {
			documentation = {
				auto_show = false,
			},
		},

		sources = {
			default = {
				"lsp",
				"path",
				"snippets",
				"buffer",
			},
		},

		fuzzy = {
			implementation = "rust",
		},
	},
}
