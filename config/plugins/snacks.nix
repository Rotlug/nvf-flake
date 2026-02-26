{
  config.vim = {
    utility.snacks-nvim = {
      enable = true;
      setupOpts = {
        picker.enabled = true;
        explorer = {
          enabled = true;
          trash = true;
          replace_netrw = true;
        };
        dim = {
          enabled = true;
          scope.min_size = 2;
          animate.enabled = false;
        };
      };
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>-";
        action = ":lua Snacks.picker.files()<CR>";
        desc = "Find files";
      }
      {
        mode = "n";
        key = "<leader>/";
        action = ":lua Snacks.picker.grep()<CR>";
        desc = "Grep Search";
      }
      {
        mode = "n";
        key = "<leader>e";
        action = ":lua Snacks.explorer()<CR>";
        desc = "Toggle Explorer";
      }
      {
        mode = "n";
        key = "<leader>f";
        action = ":lua if Snacks.dim.enabled then Snacks.dim.disable() else Snacks.dim.enable() end<CR>";
        desc = "Toggle Dim";
      }
    ];
  };
}
