{
  config.vim = {
    mini = {
      pairs.enable = true;
      icons.enable = true;
      comment = {
        enable = true;
        setupOpts = {
          mappings = {
            comment = "<A-/>";
            comment_line = "<A-/>";
            comment_visual = "<A-/>";
            textobject = "<A-/>";
          };
        };
      };
    };
  };
}
