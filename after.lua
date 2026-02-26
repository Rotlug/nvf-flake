-- Ctrl+F to find & replace
vim.keymap.set("x", "<M-f>", function()
	vim.cmd('normal! "vy')
	local sel = vim.fn.getreg("v"):gsub("\n", ""):gsub("\r", "")
	sel = vim.fn.escape(sel, "/\\")
	local base = ":%s/" .. sel .. "//g"
	local left = vim.api.nvim_replace_termcodes("<Left>", true, false, true)
	local move = left .. left
	local final = vim.api.nvim_replace_termcodes(base, true, false, true) .. move
	vim.api.nvim_feedkeys(final, "n", false)
end, { noremap = true, desc = "Global substitute of selected text (Alt-f)" })
