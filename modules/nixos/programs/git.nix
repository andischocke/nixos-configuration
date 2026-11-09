{
  flake.nixosModules.configuration = {
    programs.git = {
      enable = true;

      config = {
        alias = {
          skim = "!git diff --name-only | fzf --preview \"git diff -- ':(top){-1}' | delta --width=\${FZF_PREVIEW_COLUMNS:-80}\" --preview-window=\"right,75%\" --layout=reverse-list || true";
        };
        branch = {
          sort = "-committerdate";
        };
        color = {
          diff = "always";
          ui = "always";
        };
        column = {
          ui = "auto";
        };
        commit = {
          gpgSign = true;
          verbose = true;
        };
        core = {
          editor = "zeditor";
          pager = "delta";
          whitespace = "fix,space-before-tab,trailing-space";
        };
        delta = {
          dark = true;
          hyperlinks = true;
          hyperlinks-file-link-format = "zed://file/{path}:{line}";
          line-numbers = true;
          syntax-theme = "Catppuccin Mocha";
        };
        diff = {
          algorithm = "histogram";
          colorMoved = "zebra";
          mnemonicPrefix = true;
          renames = true;
          tool = "zeditor";
        };
        difftool = {
          prompt = false;
          zeditor = {
            cmd = "zeditor --diff \"$LOCAL\" \"$REMOTE\"";
          };
        };
        fetch = {
          all = true;
          prune = true;
          pruneTags = true;
        };
        gpg = {
          format = "ssh";
        };
        help = {
          autocorrect = "prompt";
        };
        init = {
          defaultBranch = "main";
        };
        interactive = {
          diffFilter = "delta --color-only";
        };
        maintenance = {
          auto = true;
          strategy = "incremental";
        };
        merge = {
          conflictStyle = "zdiff3";
        };
        pull = {
          rebase = true;
        };
        push = {
          autoSetupRemote = true;
          default = "simple";
          followTags = true;
        };
        rebase = {
          autoSquash = true;
          autoStash = true;
          updateRefs = true;
        };
        rerere = {
          autoupdate = true;
          enabled = true;
        };
        tag = {
          gpgSign = true;
          sort = "version:refname";
        };
        user = {
          email = "andreas.henneberger@gmail.com";
          name = "Andreas Henneberger";
          signingkey = "~/.ssh/id_ed25519.pub";
        };
      };
    };
  };
}
