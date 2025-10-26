return {
  "vyfor/cord.nvim",
  build = ":Cord update",
  opts = {
    -- 🖊 Editor
    editor = {
      client = "neovim",
      tooltip = "The Superior Text Editor",
      icon = nil, -- can set a custom icon here
    },

    -- 🎨 Display
    display = {
      theme = "default", -- 'default', 'atom', 'catppuccin'
      flavor = "dark",   -- 'dark', 'light', 'accent'
      view = "full",     -- 'full', 'editor', 'asset', 'auto'
      swap_fields = false,
      swap_icons = false,
    },

    -- ⏰ Timestamp
    timestamp = {
      enabled = true,
      reset_on_idle = false,
      reset_on_change = false,
      shared = false,
    },

    -- 💤 Idle
    idle = {
      enabled = true,
      timeout = 300000, -- 5 minutes
      show_status = true,
      ignore_focus = true,
      unidle_on_focus = true,
      smart_idle = true,
      details = "Idling",
      state = nil,
      tooltip = "💤",
      icon = nil,
    },

    -- 📝 Text
    text = {
      default = "Using Neovim",
      editing = "Editing ${filename}",
      viewing = "Viewing ${filename}",
      workspace = "In ${workspace}",
      file_browser = "Browsing files in ${name}",
      plugin_manager = "Managing plugins in ${name}",
      terminal = "Running commands in ${name}",
    },

    -- 🕹️ Buttons
    buttons = {
      {
        label = function(opts)
          return opts.repo_url and "View Repository" or "Website"
        end,
        url = function(opts)
          return opts.repo_url or "https://github.com/vyfor/cord.nvim"
        end,
      },
    },

    -- 🗃️ Assets
    assets = {
      [".rs"] = { icon = "rust", tooltip = "Rust", text = "Writing in Rust" },
      netrw = { name = "Netrw", type = "file_browser" },
    },

    -- 🧩 Variables
    variables = true, -- ✅ enables ${} placeholders

    -- 🪝 Hooks
    hooks = {
      ready = function(manager) print("Cord ready!") end,
      shutdown = function() print("Cord shutdown.") end,
    },
  },
}

