-- Ctrl+F to find & replace
vim.keymap.set("x", "<M-f>", function()
	-- Yank the selection into register 'v'
	vim.cmd('normal! "vy')
	local sel = vim.fn.getreg("v"):gsub("\n", ""):gsub("\r", "")

	-- ESCAPING LOGIC:
	-- We escape backslashes first, then the forward slash (delimiter),
	-- then standard regex magic characters.
	sel = vim.fn.escape(sel, "/\\^$*.[~")

	-- Prepend '\V' to the search string to force "very nomagic" mode.
	-- This makes most characters literal by default, adding a second layer of safety.
	local base = ":%s/\\V" .. sel .. "//g"

	local left = vim.api.nvim_replace_termcodes("<Left>", true, false, true)
	local move = left .. left
	local final = vim.api.nvim_replace_termcodes(base, true, false, true) .. move

	vim.api.nvim_feedkeys(final, "n", false)
end, { noremap = true, desc = "Literal global substitute of selection (Alt-f)" })
