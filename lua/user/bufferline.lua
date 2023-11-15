vim.opt.termguicolors = true
require("bufferline").setup {
options = {
    numbers = "ordinal", -- "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
    close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
    middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
    -- Add custom areas on the left and right
    custom_areas = {
      right = function()
        local result = {}
        local error = vim.diagnostic.get(0, {severity = vim.diagnostic.severity.ERROR})
        local warning = vim.diagnostic.get(0, {severity = vim.diagnostic.severity.WARN})
        if #error > 0 then
          result[1] = {text = "  " .. #error, guifg = "#ff6c6b"}
        end
        if #warning > 0 then
          result[2] = {text = "  " .. #warning, guifg = "#ECBE7B"}
        end
        return result
      end,
    },
    -- Other configuration options
    offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 1 } },
    show_buffer_icons = true, -- disable filetype icons for buffers
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true, -- whether to keep your buffers in the same order
    separator_style = "thin", -- "slant" | "thick" | "thin" | { 'any', 'any' },
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    sort_by = 'insert_after_current', -- 'insert_after_current' | 'insert_at_end' | 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' |
  },
  -- highlights = {
  --   fill = {
  --     guifg = {attribute = "fg", highlight = "#ff0000"},
  --     guibg = {attribute = "bg", highlight = "TabLine"},
  --   },
  --   -- Add more highlight groups as needed
  -- },
}
