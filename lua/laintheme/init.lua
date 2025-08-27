--This Theme is meant for treesitter use

local M = {}

function M.setup()

    local colors = {
        bg = "#0e0e0e",
        fg = "#c0bdac",
        red1 = "#cb918c",
        red2 = "#d17389",
        opaque = "#c0b592",
        brown = "#7a7360",
        green = "#61695e",
        orange = "#af5f00",
    }

    local highlights = {
        Normal = {fg = colors.fg, bg = colors.bg},
        Comment = {fg = colors.brown, italic = true},
        --Keyword = {fg = colors.orange, bold = false},

        --TREESITTER
        ["@keyword"] = {fg = colors.orange},
        ["@identifier"] = {fg = colors.fg},
        ["@variable"] = {fg = colors.fg},
        ["@declaration"] = {fg = colors.fg},

        ["@type"] = {fg = colors.opaque},
        ["@type.definition"] = {fg = colors.opaque},
        ["@type.builtin"] = {fg = colors.opaque},

        ["@function"] = {fg = colors.fg},
        ["@define"] = {fg = colors.red1},
            
        --["@string"] = {fg = colors.green},
        --["@string.special"] = {fg = colors.red2},
        --["@string.regex"] = {fg = colors.red2},
        ["@string"] = {fg = colors.red1},
        ["@string.special"] = {fg = colors.green},
        ["@string.regex"] = {fg = colors.green},

        ["@operator"] = {fg = colors.fg},
        ["@punctuation.bracket"] = {fg = colors.fg},
            
        ["@comment"] = {fg = colors.brown},
        ["@value"] = {fg = colors.red1},
        ["@number"] = {fg = colors.red1},    
        ["@boolean"] = {fg = colors.red1},
        ["@constant.builtin"] = {fg = colors.red1},
        ["@character"] = {fg = colors.green},

        ["@property"] = {fg = colors.fg},
        ["@attribute"] = {fg = colors.fg},

        ["@include"] = {fg = colors.red1},
        ["@import"] = {fg = colors.red1},
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M