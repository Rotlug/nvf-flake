{pkgs, ...}: {
  config.vim = {
    languages = {
      enableFormat = true;
      enableTreesitter = true;

      nix.enable = true;

      rust = {
        enable = true;
        format.enable = true;
        # Clippy
        lsp.opts = ''
          ["rust-analyzer"] = {
            check = {
              command = "clippy",
              extraArgs = { "--", "-D", "clippy::pedantic" },
            },
          }
        '';
      };

      ts.enable = true;
      html.enable = true;
      python.enable = true;
      css.enable = true;
      toml.enable = true;
      tailwind.enable = true;
      lua.enable = true;
    };

    # Extra languages/linters not supported in nvf yet
    lsp.lspconfig.sources = {
      eslint = ''
        vim.lsp.config("eslint", {})
        vim.lsp.enable("eslint")
      '';
    };

    extraPackages = with pkgs; [
      clippy
      vscode-langservers-extracted
    ];
  };
}
