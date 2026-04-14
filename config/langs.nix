{pkgs, ...}: {
  config.vim = {
    languages = {
      enableFormat = true;
      enableTreesitter = true;

      nix.enable = true;
      ts.enable = true;
      html.enable = true;
      css.enable = true;
      toml.enable = true;
      tailwind.enable = true;
      lua.enable = true;
      clang.enable = true;
      cmake.enable = true;

      # Languages with extra config options
      python = {
        enable = true;
        format.type = ["ruff"];
      };
      rust = {
        enable = true;
        format.enable = true;
        lsp.opts = ''
          ["rust-analyzer"] = {
            check = {
              command = "clippy",
              extraArgs = { "--", "-D", "clippy::pedantic" },
            },
          }
        '';
      };
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
      clang-tools
      vscode-langservers-extracted
    ];
  };
}
