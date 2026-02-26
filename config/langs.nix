{
  config.vim.languages = {
    enableFormat = true;
    enableTreesitter = true;

    nix.enable = true;
    rust = {
      enable = true;
      format.enable = true;
    };

    ts.enable = true;
    html.enable = true;
    css.enable = true;
    toml.enable = true;
  };
}
