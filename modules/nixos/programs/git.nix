{
  flake.nixosModules.configuration = {
    programs.git = {
      enable = true;

      config = {
        branch = {
          sort = "-committerdate";
        };
        column = {
          ui = "auto";
        };
        commit = {
          gpgSign = true;
          verbose = true;
        };
        core = {
          whitespace = "fix,space-before-tab,trailing-space";
        };
        diff = {
          algorithm = "histogram";
          colorMoved = "plain";
          mnemonicPrefix = true;
          renames = true;
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
