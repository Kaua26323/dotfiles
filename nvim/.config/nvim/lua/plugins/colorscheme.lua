vim.pack.add({
  "https://github.com/Mofiqul/dracula.nvim",
})

local dracula = require("dracula")

local colors = {
  -- One Dark Pro Night Flat inspired background
  bg = "#16191D",
  bg_dark = "#101215",
  bg_highlight = "#2C313C",
  bg_float = "#1E2227",

  -- Dracula
  fg = "#F8F8F2",
  selection = "#44475A",
  comment = "#6272A4",

  red = "#FF5555",
  orange = "#FFB86C",
  yellow = "#F1FA8C",
  green = "#50FA7B",
  purple = "#BD93F9",
  cyan = "#8BE9FD",
  pink = "#FF79C6",

  bright_red = "#FF6E6E",
  bright_green = "#69FF94",
  bright_yellow = "#FFFFA5",
  bright_blue = "#D6ACFF",
  bright_magenta = "#FF92DF",
  bright_cyan = "#A4FFFF",
  bright_white = "#FFFFFF",

  white = "#ABB2BF",
  black = "#16191D",

  gutter_fg = "#667187",
  nontext = "#3B4048",
}

dracula.setup({
  colors = {
    bg = colors.bg,
    fg = colors.fg,

    selection = colors.selection,
    comment = colors.comment,

    red = colors.red,
    orange = colors.orange,
    yellow = colors.yellow,
    green = colors.green,
    purple = colors.purple,
    cyan = colors.cyan,
    pink = colors.pink,

    bright_red = colors.bright_red,
    bright_green = colors.bright_green,
    bright_yellow = colors.bright_yellow,
    bright_blue = colors.bright_blue,
    bright_magenta = colors.bright_magenta,
    bright_cyan = colors.bright_cyan,
    bright_white = colors.bright_white,

    menu = colors.bg_float,
    visual = colors.bg_highlight,
    gutter_fg = colors.gutter_fg,
    nontext = colors.nontext,

    white = colors.white,
    black = colors.black,
  },

  transparent_bg = false,
  italic_comment = true,
  show_end_of_buffer = false,

  overrides = {
    ---------------------------------------------------------------------------
    -- Editor
    ---------------------------------------------------------------------------

    Normal = {
      fg = colors.fg,
      bg = colors.bg,
    },

    NormalNC = {
      fg = colors.fg,
      bg = colors.bg,
    },

    EndOfBuffer = {
      fg = colors.bg,
      bg = colors.bg,
    },

    SignColumn = {
      bg = colors.bg,
    },

    FoldColumn = {
      fg = colors.gutter_fg,
      bg = colors.bg,
    },

    LineNr = {
      fg = colors.gutter_fg,
      bg = colors.bg,
    },

    CursorLine = {
      bg = colors.bg_highlight,
    },

    CursorLineNr = {
      fg = colors.orange,
      bg = colors.bg_highlight,
      bold = true,
    },

    ColorColumn = {
      bg = colors.bg_highlight,
    },

    WinSeparator = {
      fg = colors.comment,
      bg = colors.bg,
    },

    Visual = {
      bg = colors.selection,
    },

    Search = {
      fg = colors.bg,
      bg = colors.yellow,
    },

    IncSearch = {
      fg = colors.bg,
      bg = colors.orange,
    },

    MatchParen = {
      fg = colors.pink,
      bold = true,
      underline = true,
    },

    ---------------------------------------------------------------------------
    -- Floating windows / completion
    ---------------------------------------------------------------------------

    NormalFloat = {
      fg = colors.fg,
      bg = colors.bg_float,
    },

    FloatBorder = {
      fg = colors.comment,
      bg = colors.bg_float,
    },

    Pmenu = {
      fg = colors.fg,
      bg = colors.bg_float,
    },

    PmenuSel = {
      fg = colors.fg,
      bg = colors.selection,
      bold = true,
    },

    PmenuSbar = {
      bg = colors.bg_highlight,
    },

    PmenuThumb = {
      bg = colors.comment,
    },

    ---------------------------------------------------------------------------
    -- Basic Vim syntax
    ---------------------------------------------------------------------------

    Comment = {
      fg = colors.comment,
      italic = true,
    },

    Constant = {
      fg = colors.orange,
    },

    String = {
      fg = colors.yellow,
    },

    Character = {
      fg = colors.yellow,
    },

    Number = {
      fg = colors.orange,
    },

    Boolean = {
      fg = colors.orange,
    },

    Float = {
      fg = colors.orange,
    },

    Identifier = {
      fg = colors.fg,
    },

    Function = {
      fg = colors.green,
    },

    Statement = {
      fg = colors.pink,
    },

    Conditional = {
      fg = colors.pink,
    },

    Repeat = {
      fg = colors.pink,
    },

    Label = {
      fg = colors.pink,
    },

    Operator = {
      fg = colors.pink,
    },

    Keyword = {
      fg = colors.pink,
      italic = true,
    },

    Exception = {
      fg = colors.pink,
    },

    PreProc = {
      fg = colors.pink,
    },

    Include = {
      fg = colors.pink,
      italic = true,
    },

    Define = {
      fg = colors.pink,
    },

    Macro = {
      fg = colors.purple,
    },

    Type = {
      fg = colors.cyan,
      italic = true,
    },

    StorageClass = {
      fg = colors.pink,
      italic = true,
    },

    Structure = {
      fg = colors.cyan,
    },

    Typedef = {
      fg = colors.cyan,
    },

    Special = {
      fg = colors.purple,
    },

    ---------------------------------------------------------------------------
    -- Treesitter: variables
    ---------------------------------------------------------------------------

    ["@variable"] = {
      fg = colors.fg,
    },

    ["@variable.builtin"] = {
      fg = colors.purple,
      italic = true,
    },

    ["@variable.parameter"] = {
      fg = colors.orange,
      italic = true,
    },

    ["@variable.parameter.builtin"] = {
      fg = colors.orange,
      italic = true,
    },

    ["@variable.member"] = {
      fg = colors.cyan,
    },

    -- Compatibility with older queries/themes
    ["@property"] = {
      fg = colors.cyan,
    },

    ["@parameter"] = {
      fg = colors.orange,
      italic = true,
    },

    ---------------------------------------------------------------------------
    -- Treesitter: constants / literals
    ---------------------------------------------------------------------------

    ["@constant"] = {
      fg = colors.orange,
    },

    ["@constant.builtin"] = {
      fg = colors.orange,
      italic = true,
    },

    ["@constant.macro"] = {
      fg = colors.purple,
    },

    ["@boolean"] = {
      fg = colors.orange,
    },

    ["@number"] = {
      fg = colors.orange,
    },

    ["@number.float"] = {
      fg = colors.orange,
    },

    ---------------------------------------------------------------------------
    -- Treesitter: strings
    ---------------------------------------------------------------------------

    ["@string"] = {
      fg = colors.yellow,
    },

    ["@string.documentation"] = {
      fg = colors.yellow,
      italic = true,
    },

    ["@string.regexp"] = {
      fg = colors.red,
    },

    ["@string.escape"] = {
      fg = colors.pink,
    },

    ["@string.special"] = {
      fg = colors.purple,
    },

    ["@character"] = {
      fg = colors.yellow,
    },

    ["@character.special"] = {
      fg = colors.purple,
    },

    ---------------------------------------------------------------------------
    -- Treesitter: functions
    ---------------------------------------------------------------------------

    ["@function"] = {
      fg = colors.green,
    },

    ["@function.builtin"] = {
      fg = colors.cyan,
      italic = true,
    },

    ["@function.call"] = {
      fg = colors.green,
    },

    ["@function.macro"] = {
      fg = colors.purple,
    },

    ["@function.method"] = {
      fg = colors.green,
    },

    ["@function.method.call"] = {
      fg = colors.green,
    },

    -- Compatibility with older Treesitter capture names
    ["@method"] = {
      fg = colors.green,
    },

    ["@method.call"] = {
      fg = colors.green,
    },

    ["@constructor"] = {
      fg = colors.cyan,
    },

    ---------------------------------------------------------------------------
    -- Treesitter: types
    ---------------------------------------------------------------------------

    ["@type"] = {
      fg = colors.cyan,
      italic = true,
    },

    ["@type.builtin"] = {
      fg = colors.cyan,
      italic = true,
    },

    ["@type.definition"] = {
      fg = colors.cyan,
    },

    ["@attribute"] = {
      fg = colors.green,
    },

    ---------------------------------------------------------------------------
    -- Treesitter: keywords
    ---------------------------------------------------------------------------

    ["@keyword"] = {
      fg = colors.pink,
      italic = true,
    },

    ["@keyword.coroutine"] = {
      fg = colors.pink,
      italic = true,
    },

    ["@keyword.function"] = {
      fg = colors.pink,
      italic = true,
    },

    ["@keyword.operator"] = {
      fg = colors.pink,
    },

    ["@keyword.import"] = {
      fg = colors.pink,
      italic = true,
    },

    ["@keyword.type"] = {
      fg = colors.pink,
      italic = true,
    },

    ["@keyword.modifier"] = {
      fg = colors.pink,
      italic = true,
    },

    ["@keyword.repeat"] = {
      fg = colors.pink,
    },

    ["@keyword.return"] = {
      fg = colors.pink,
    },

    ["@keyword.debug"] = {
      fg = colors.red,
    },

    ["@keyword.exception"] = {
      fg = colors.pink,
    },

    ["@keyword.conditional"] = {
      fg = colors.pink,
    },

    ["@keyword.conditional.ternary"] = {
      fg = colors.pink,
    },

    ["@keyword.directive"] = {
      fg = colors.pink,
    },

    ["@keyword.directive.define"] = {
      fg = colors.pink,
    },

    ---------------------------------------------------------------------------
    -- Treesitter: operators / punctuation
    ---------------------------------------------------------------------------

    ["@operator"] = {
      fg = colors.pink,
    },

    ["@punctuation.delimiter"] = {
      fg = colors.fg,
    },

    ["@punctuation.bracket"] = {
      fg = colors.fg,
    },

    ["@punctuation.special"] = {
      fg = colors.pink,
    },

    ---------------------------------------------------------------------------
    -- Treesitter: modules / namespaces
    ---------------------------------------------------------------------------

    ["@module"] = {
      fg = colors.cyan,
    },

    ["@module.builtin"] = {
      fg = colors.cyan,
      italic = true,
    },

    ["@namespace"] = {
      fg = colors.cyan,
    },

    ---------------------------------------------------------------------------
    -- Treesitter: comments
    ---------------------------------------------------------------------------

    ["@comment"] = {
      fg = colors.comment,
      italic = true,
    },

    ["@comment.documentation"] = {
      fg = colors.comment,
      italic = true,
    },

    ["@comment.error"] = {
      fg = colors.red,
      bold = true,
    },

    ["@comment.warning"] = {
      fg = colors.orange,
      bold = true,
    },

    ["@comment.todo"] = {
      fg = colors.purple,
      bold = true,
    },

    ["@comment.note"] = {
      fg = colors.cyan,
      bold = true,
    },

    ---------------------------------------------------------------------------
    -- LSP semantic tokens
    ---------------------------------------------------------------------------

    ["@lsp.type.namespace"] = {
      fg = colors.cyan,
    },

    ["@lsp.type.type"] = {
      fg = colors.cyan,
      italic = true,
    },

    ["@lsp.type.class"] = {
      fg = colors.cyan,
    },

    ["@lsp.type.enum"] = {
      fg = colors.cyan,
    },

    ["@lsp.type.interface"] = {
      fg = colors.cyan,
      italic = true,
    },

    ["@lsp.type.struct"] = {
      fg = colors.cyan,
    },

    ["@lsp.type.typeParameter"] = {
      fg = colors.cyan,
      italic = true,
    },

    ["@lsp.type.parameter"] = {
      fg = colors.orange,
      italic = true,
    },

    ["@lsp.type.variable"] = {
      fg = colors.fg,
    },

    ["@lsp.type.property"] = {
      fg = colors.cyan,
    },

    ["@lsp.type.enumMember"] = {
      fg = colors.orange,
    },

    ["@lsp.type.function"] = {
      fg = colors.green,
    },

    ["@lsp.type.method"] = {
      fg = colors.green,
    },

    ["@lsp.type.macro"] = {
      fg = colors.purple,
    },

    ["@lsp.type.decorator"] = {
      fg = colors.green,
    },

    ["@lsp.type.keyword"] = {
      fg = colors.pink,
      italic = true,
    },

    ["@lsp.type.comment"] = {
      fg = colors.comment,
      italic = true,
    },

    ["@lsp.type.string"] = {
      fg = colors.yellow,
    },

    ["@lsp.type.number"] = {
      fg = colors.orange,
    },

    ["@lsp.type.regexp"] = {
      fg = colors.red,
    },

    ["@lsp.type.operator"] = {
      fg = colors.pink,
    },

    ---------------------------------------------------------------------------
    -- Diagnostics
    ---------------------------------------------------------------------------

    DiagnosticError = {
      fg = colors.red,
    },

    DiagnosticWarn = {
      fg = colors.orange,
    },

    DiagnosticInfo = {
      fg = colors.cyan,
    },

    DiagnosticHint = {
      fg = colors.purple,
    },

    DiagnosticUnderlineError = {
      undercurl = true,
      sp = colors.red,
    },

    DiagnosticUnderlineWarn = {
      undercurl = true,
      sp = colors.orange,
    },

    DiagnosticUnderlineInfo = {
      undercurl = true,
      sp = colors.cyan,
    },

    DiagnosticUnderlineHint = {
      undercurl = true,
      sp = colors.purple,
    },
  },
})

vim.cmd.colorscheme("dracula")
