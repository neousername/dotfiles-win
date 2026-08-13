return {
	root_dir = vim.fn.stdpath("config"),

	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				disable = { "undefined-doc-name" },
				globals = { "vim" },
			},
			workspace = {
				preloadFileSize = 10000,
				library = {
					vim.env.VIMRUNTIME,
				},
			},
		},
	},
}
