function SetColorScheme(colorScheme)
	colorScheme = colorScheme or "tokyonight"
	vim.cmd.colorscheme(colorScheme) 

	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

SetColorScheme()

