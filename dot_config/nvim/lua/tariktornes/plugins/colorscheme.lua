return {
	"savq/melange-nvim",
	config = function()
		vim.cmd.colorscheme("melange")
		vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
	end,
}
