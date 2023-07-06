return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup {
      close_if_last_window = true,
      popup_border_style = "rounded",
      enable_git_status = true,
      default_component_configs = {
        indent = {
          indent_size = 2,
          padding = 0,
          with_markers = true,
          indent_marker = "|",
          last_indent_marker = "└",
          highlight = "NeoTreeIndentMarker",
          with_expanders = false,
          expander_collapsed = "",
          expander_expanded = "",
          expander_highlight = "NeoTreeExpander",
        },
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "",
          default = "",
        },
        name = {
          trailing_slash = false,
          use_git_status_colors = true,
        },
      buffers = {
        show_unloaded = true,
        window = {
          mappings = {
            ["bd"] = "buffer_delete",
          },
        },
      },
        git_status = {
          symbols = {
            added = "",
            deleted = "",
            modified = "",
            renamed = "➜",
            untracked = "★",
            ignored = "◌",
            unstaged = "✗",
            staged = "✓",
            conflict = "",
          },
        },
      },
      window = {
        position = "left",
        width = 25,
        mappings = {
          ["o"] = "open",
          ["S"] = "open_split",
          ["s"] = "open_vsplit",
          ["C"] = "close_node",
          ["<bs>"] = "navigate_up",
          ["."] = "set_root",
          ["H"] = "toggle_hidden",
          ["R"] = "refresh",
          ["/"] = "fuzzy_finder",
          ["f"] = "filter_on_submit",
          ["<c-x>"] = "clear_filter",
          ["a"] = "add",
          ["d"] = "delete",
          ["r"] = "rename",
          ["y"] = "copy_to_clipboard",
          ["x"] = "cut_to_clipboard",
          ["p"] = "paste_from_clipboard",
          ["c"] = "copy",
          ["m"] = "move",
          ["q"] = "close_window",
        },
      },
      nesting_rules = {},
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_by_name = {
            ".DS_Store",
            "node_modules",
            "__pycache__",
          },
        },
       follow_current_file = true,
       use_libuv_file_watcher = true,
      },
      git_status = {
        window = {
          position = "left",
          mappings = {
            ["A"] = "git_add_all",
            ["gu"] = "git_unstage_file",
            ["ga"] = "git_add_file",
            ["gr"] = "git_revert_file",
            ["gc"] = "git_commit",
            ["gp"] = "git_push",
            ["gg"] = "git_commit_and_push",
          },
        },
      },
    }
  end,
}
