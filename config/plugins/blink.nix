{
  config.vim = {
    autocomplete.blink-cmp = {
      enable = true;
      setupOpts = {
        keymap = {
          preset = "super-tab";
          "<Tab>" = ["accept" "snippet_forward" "fallback"];
          "<S-Tab>" = ["select_prev" "snippet_backward" "fallback"];
        };

        completion = {
          documentation.auto_show = true;
          menu.auto_show = true;
          list.selection = {
            preselect = true;
            auto_insert = true;
          };
        };

        cmdline = {
          enabled = true;
          completion.menu.auto_show = true;
        };
      };
    };
  };
}
