vim.opt.termguicolors = true -- this variable must be enabled for colors to be applied properly

local list = {
  { key = {"<C-o>"},    action = "cd" },
}

require'nvim-tree'.setup {
  open_on_setup = true, -- When opening a dir instead of a file tree is automatically open
  update_cwd = true, -- Cd will change cwd and thus the root of the tree
  open_on_tab = true,
  -- hijack_unnamed_buffer_when_opening = true,
  view = {
    mappings = {
      list = list
    }
  },
  live_filter = {
    always_show_folders = false -- To apply filters to folders
  },
  renderer = {
    highlight_opened_files = "all"
  },
  git = {
    ignore = false -- Don't hide the files that are in .gitignore
  },
  update_focused_file = {
    enable = true
  }
}
