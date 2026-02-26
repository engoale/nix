{
  plugins = {
    codecompanion = {
      enable = true;
      settings = {
        adapters = {
          http = {
            anthropic = {
              __raw = ''
                function()
                  return require("codecompanion.adapters").extend("anthropic", {
                    env = {
                      api_key = "ANTHROPIC_API_KEY",
                    },
                  })
                end,
              '';
            };
          };
          acp = {
            claude_code = {
              __raw = ''
                function()
                  return require("codecompanion.adapters").extend("claude_code", {
                    env = {
                      ANTHROPIC_API_KEY = "ANTHROPIC_API_KEY",
                    },
                  })
                end,
              '';
            };
          };
        };
        opts = {
          log_level = "TRACE";
          send_code = true;
          use_default_actions = true;
          use_default_prompts = true;
        };
        strategies = {
          agent = {
            adapter = "anthropic";
          };
          chat = {
            adapter = "anthropic";
          };
          inline = {
            adapter = "copilot";
          };
        };
      };
    };
  };
}
