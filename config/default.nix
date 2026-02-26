{
  imports = [
    ./keymaps.nix
    ./langs.nix
    ./plugins
  ];

  config.vim = {
    theme = {
      enable = true;
      name = "mellow";
    };

    vimAlias = true;

    lsp = {
      enable = true;
      lspconfig.enable = true;
      trouble.enable = true;
      formatOnSave = true;
    };

    binds.whichKey.enable = true;

    options = {
      smartindent = true;
      autoindent = true;
      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
    };

    clipboard = {
      enable = true;
      registers = "unnamedplus";
      providers.wl-copy.enable = true;
    };

    luaConfigPost = builtins.readFile ../after.lua;
  };
}
