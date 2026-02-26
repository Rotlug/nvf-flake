{
  imports = [
    ./keymaps.nix
    ./langs.nix
    ./plugins
  ];

  config.vim = {
    theme = {
      enable = true;
      name = "everforest";
      style = "hard";
    };

    vimAlias = true;

    lsp = {
      enable = true;
      trouble.enable = true;
      formatOnSave = true;
    };

    binds.whichKey.enable = true;

    options = {
      shiftwidth = 2;
    };

    clipboard = {
      enable = true;
      registers = "unnamedplus";
      providers.wl-copy.enable = true;
    };
  };
}
