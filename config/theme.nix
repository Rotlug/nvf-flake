{pkgs, ...}: {
  config.vim = {
    theme.enable = false;
    extraPlugins.jb = {
      package = pkgs.callPackage ../pkgs/jb {};
      setup = ''
        require('jb').setup({
          transparent = true,
          styles = { sidebars = "transparent" }
        })
        vim.cmd("colorscheme jb")
      '';
    };
  };
}
