# Enable Starship and config
{ config, pkgs, ... }: {
  config = {
    programs = {
      starship = {
        enable = true;
        settings = {
          username = {
            format = " [╭─$user]($style)@";
            show_always = true;
            style_root = "bold red";
            style_user = "bold green";
          };

          hostname = {
            disabled = false;
            format = "[$hostname]($style) in ";
            ssh_only = false;
            style = "bold green";
            #trim_at = "-";
          };

          directory = {
            style = "green";
            truncate_to_repo = true;
            truncation_length = 0;
            truncation_symbol = "repo: ";
          };

          sudo = {
            disabled = false;
          };

          git_status = {
            ahead = "⇡[$(git rev-list --count HEAD..@{u})]";
            behind = "⇣[$(git rev-list --count @{u}..HEAD)]";
            deleted = "x";
            diverged = "⇕⇡[$(git rev-list --count HEAD..@{u})]⇣[$(git rev-list --count @{u}..HEAD)]";
            style = "white";
          };

          cmd_duration = {
            disabled = false;
            format = "took [$duration]($style)";
            min_time = 1;
            style = "bold green";
          };

          battery = {
            charging_symbol = "";
            disabled = true;
            discharging_symbol = "";
            full_symbol = "";
            display = {
              disabled = false;
              style = "bold red"; # "bold red" style when capacity is between 0% and 10%
              threshold = 15;
            };
            #display = {
            #  disabled = true;
            #  style = "bold yellow"; # "bold yellow" style when capacity is between 10% and 30%
            #  threshold = 50;
            #};
            #display = {
            #  disabled = true;
            #  style = "bold green"; # "bold green" style when capacity is between 10% and 30%
            #  threshold = 80;
            #};
          };

          time = {
            disabled = false;
            format = "[ ├ $time]($style)\n";
            style = "bold green";
            time_format = "%T";
          };

          character = {
            error_symbol = " [×](bold red)";
            success_symbol = " [╰─λ](bold green)";
          };

          status = {
            disabled = false;
            format = "[\[$symbol$status_common_meaning$status_signal_name$status_maybe_int\]]($style)";
            map_symbol = true;
            pipestatus = true;
            symbol = "🔴";
          };

          aws = {
            symbol = " ";
          };

          conda = {
            symbol = " ";
          };

          dart = {
            symbol = " ";
          };

          docker_context = {
            symbol = " ";
          };

          elixir = {
            symbol = " ";
          };

          elm = {
            symbol = " ";
          };

          git_branch = {
            symbol = " ";
          };

          golang = {
            symbol = " ";
          };

          hg_branch = {
            symbol = " ";
          };

          java = {
            symbol = " ";
          };

          julia = {
            symbol = " ";
          };

          nim = {
            symbol = " ";
          };

          nix_shell = {
            symbol = " ";
          };

          nodejs = {
            symbol = " ";
          };

          package = {
            symbol = " ";
          };

          perl = {
            symbol = " ";
          };

          php = {
            symbol = " ";
          };

          python = {
            symbol = " ";
          };

          ruby = {
            symbol = " ";
          };

          rust = {
            symbol = " ";
          };

          swift = {
            symbol = "ﯣ ";
          };
        };
      };
    };
  };
}