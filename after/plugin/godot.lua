--godot.lua
local ok, godot = pcall(require, "godot")
if not ok then
	return
end


-- default config
local config = {
 	bin = "godot",
 	gui = {
		console_config = vim.api.nvim_open_window
 	},
}

godot.setup(config)

local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end

map("n", "<leader>dr", godot.debugger.debug)
map("n", "<leader>dd", godot.debugger.debug_at_cursor)
map("n", "<leader>dq", godot.debugger.quit)
map("n", "<leader>dc", godot.debugger.continue)
map("n", "<leader>ds", godot.debugger.step)

local autocmd_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    pattern = { "*.gd" },
    desc = "Auto-format Godot scripts",
    callback = function()
        local fileName = vim.api.nvim_buf_get_name(0)
        vim.cmd(":!gdformat " .. fileName)
    end,
    group = autocmd_group,
})
