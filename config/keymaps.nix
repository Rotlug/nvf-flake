{
  config.vim = {
    lsp.mappings = {
      codeAction = "<leader>ca";
      goToDefinition = "gd";
      renameSymbol = "<leader>rn";
      openDiagnosticFloat = "<leader>d";
    };

    # Global Keymaps
    keymaps = [
      {
        mode = ["n" "v" "x"];
        key = "<C-a>";
        action = "gg0vG$";
        silent = true;
        noremap = true;
        desc = "Select All";
      }
      {
        mode = "n";
        key = "<A-Up>";
        action = ":m .-2<CR>==";
        silent = true;
        desc = "Move line up";
      }
      {
        mode = "n";
        key = "<A-Down>";
        action = ":m .+1<CR>==";
        silent = true;
        desc = "Move line down";
      }
      {
        mode = "i";
        key = "<A-Up>";
        action = "<Esc>:m .-2<CR>==gi";
        silent = true;
        desc = "Move line up";
      }
      {
        mode = "i";
        key = "<A-Down>";
        action = "<Esc>:m .+1<CR>==gi";
        silent = true;
        desc = "Move line down";
      }
      {
        mode = "v";
        key = "<A-Up>";
        action = ":m '<-2<CR>gv=gv";
        silent = true;
        desc = "Move selection up";
      }
      {
        mode = "v";
        key = "<A-Down>";
        action = ":m '>+1<CR>gv=gv";
        silent = true;
        desc = "Move selection down";
      }
      {
        mode = ["n" "i"];
        key = "<C-s>";
        action = "<cmd>w<cr><esc>";
        desc = "Save File";
      }
      {
        mode = "n";
        key = "<C-Up>";
        action = "<C-u>";
        silent = true;
        desc = "Scroll up";
      }
      {
        mode = "n";
        key = "<C-Down>";
        action = "<C-d>";
        silent = true;
        desc = "Scroll Down";
      }
      {
        mode = "i";
        key = "<C-Up>";
        action = "<Esc><C-u>i";
        silent = true;
        desc = "Scroll up";
      }
      {
        mode = "i";
        key = "<C-Down>";
        action = "<Esc><C-d>i";
        silent = true;
        desc = "Scroll down";
      }
      {
        mode = "v";
        key = "<C-Up>";
        action = "<C-u>";
        silent = true;
        desc = "Scroll up";
      }
      {
        mode = "v";
        key = "<C-Down>";
        action = "<C-d>";
        silent = true;
        desc = "Scroll down";
      }
      {
        mode = "n";
        key = "<C-S-Left>";
        action = "<C-w>h";
        desc = "Go to left window";
      }
      {
        mode = "n";
        key = "<C-S-Right>";
        action = "<C-w>l";
        desc = "Go to right window";
      }
      {
        mode = "n";
        key = "<C-S-Up>";
        action = "<C-w>k";
        desc = "Go to upper window";
      }
      {
        mode = "n";
        key = "<C-S-Down>";
        action = "<C-w>j";
        desc = "Go to lower window";
      }
    ];

    luaConfigPost = ''
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
    '';
  };
}
