{pkgs, ...}:
pkgs.vimUtils.buildVimPlugin rec {
  pname = "jb.nvim";
  version = "e580734e50c2502c78c61299537c8aae0bf89563";
  src = pkgs.fetchFromGitHub {
    owner = "nickkadutskyi";
    repo = "jb.nvim";
    rev = version;
    sha256 = "sha256-J2wQvzRgck/FrtI0cmg8XGmMbjeBMZUqbd64XOx9j4Y=";
  };
}
