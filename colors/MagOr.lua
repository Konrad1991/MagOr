require("colorbuddy").colorscheme("MagOr")
local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local styles = colorbuddy.styles
local bold = styles.BOLD

Color.new("background", "#24283b")
local background_string = "#111111"
Color.new("gray0", background_string)

Color.new("white", "#FFFFFF")
Color.new("red", "#9e2f2f")
Color.new("pink", "#b8237c")
Color.new("green", "#26803e")
Color.new("yellow", "#797d1b")
Color.new("blue", "#225b8c")
Color.new("aqua", "#8ec07c")
Color.new("cyan", "#31b5a3")
Color.new("purple", "#6835b5")
Color.new("violet", "#b452d1")
Color.new("orange", "#FF8800")
Color.new("brown", "#8f492f")
Color.new("seagreen", "#698b69")
Color.new("turquoise", "#3b3bb3")
Color.new("grey", "#313332")
Color.new("syntax_bg", "#0a0b0d")
Color.new("syntax_fg", "#707070")
Color.new("comment_fg", "#454545")
Color.new("cursor_line_bg", "#181b1f")
Color.new("visual", "#253340")
Color.new("keyword", "#8e4095")
Color.new("operator", "#8e4095")
Color.new("key", "#76acb0")

Group.new("Normal", nil, colors.background, bold)
Group.new("VertSplit", nil, colors.background, bold)
Group.new("CursorLineNr", colors.yellow, colors.black, bold)
Group.new("LineNr", colors.black, colors.magenta, bold)
Group.new("String", colors.cyan, nil, styles.bold)
Group.new("Number", colors.cyan, nil, styles.bold)
Group.new("Variable", colors.white, nil, styles.bold)
Group.new("Keyword", colors.keyword, nil, styles.bold)
Group.new("Operator", colors.operator, nil, styles.bold)
Group.new("MatchParen", colors.white, colors.blue, styles.bold)
Group.new("CursorLine", colors.none, colors.cursor_line_bg, bold)
Group.new("Visual", colors.none, colors.visual, bold)

local function setup_cpp_colors()
	Group.new("@lsp.type.function.cpp", colors.black, colors.magenta, bold)
	Group.new("@lsp.type.variable.cpp", colors.white, nil, bold)
	Group.new("@lsp.type.property.cpp", colors.white, nil, bold)
	Group.new("@lsp.type.typeParameter.cpp", colors.orange, nil, bold)
	Group.new("@lsp.type.typeParameter.cpp", colors.orange, nil, bold)
	Group.new("@lsp.type.class.cpp", colors.orange, nil, bold)
	Group.new("@lsp.type.type.cpp", colors.orange, nil, bold)
	Group.new("@lsp.typemod.operator.declaration.cpp", colors.key, nil, bold)
	Group.new("@lsp.type.namespace.cpp", colors.key, nil, bold)
	Group.new("@lsp.type.operator.cpp", colors.key, nil, bold)
	Group.new("@lsp.type.method.cpp", colors.black, colors.magenta, bold)
	Group.new("@lsp.type.unknown.cpp", colors.black, colors.magenta, bold)
	Group.new("@lsp.type.macro.cpp", colors.black, colors.magenta, bold)

	Group.new("@type.cpp", colors.orange, nil, bold)
	Group.new("@function.call.cpp", colors.black, colors.magenta, bold)
	Group.new("@function.method.call.cpp", colors.black, colors.magenta, bold)
	Group.new("@type.builtin.cpp", colors.orange, nil, bold)
	Group.new("@type.definition.cpp", colors.orange, nil, bold)
	Group.new("@variable.builtin.cpp", colors.white, nil, bold)
	Group.new("@keyword.modifier.cpp", colors.orange, nil, bold)
	Group.new("@keyword.return.cpp", colors.key, nil, bold)
	Group.new("@keyword.cpp", colors.key, nil, bold)
	Group.new("@function.cpp", colors.key, nil, bold)
	Group.new("@operator.cpp", colors.key, nil, bold)
	Group.new("@punctuation.bracket.cpp", colors.key, nil, bold)
	Group.new("@punctuation.delimiter.cpp", colors.key, nil, bold)

	-- Group.new("Type", colors.orange, nil, styles.bold)
	-- Group.new("@operator.cpp", colors.operator, nil, styles.bold)
	-- Group.new("@punctuation.bracket", colors.operator, nil, styles.bold)
	-- Group.new("@punctuation.delimiter.cpp", colors.operator, nil, styles.bold)
	-- Group.new("@keyword.operator.cpp", colors.keyword, nil, styles.bold)
	-- Group.new("@keyword.directive.cpp", colors.keyword, nil, styles.bold)
	-- Group.new("@keyword.repeat.cpp", colors.keyword, nil, styles.bold)
	-- Group.new("@type.cpp", colors.orange, nil, styles.bold)
	-- Group.new("@type.builtin.cpp", colors.orange, nil, styles.bold)
	-- Group.new("@lsp.type.type.cpp", colors.orange, nil, styles.bold)
	-- Group.new("@type.class.cpp", colors.orange, nil, styles.bold)
	-- Group.new("TypeDef", colors.orange, nil, styles.bold)
	-- Group.new("@constructor.cpp", colors.white, nil, styles.bold)
	-- Group.new("@parameter", colors.white, nil, styles.bold)
	-- Group.new("@property.cpp", colors.white, nil, styles.bold)
	-- Group.new("@property", colors.white, nil, styles.bold)
	-- Group.new("Structure", colors.white, nil, styles.bold)
	-- Group.new("@constant.cpp", colors.orange, nil, styles.bold)
end

local function setup_lua_colors()
	Group.new("@lsp.type.function.lua", colors.turquoise, colors.black, bold)
end

local function setup_R_colors()
	Group.new("rFunction", colors.orange, colors.black, bold)
end

local function setup_colors_for_filetype(filetype)
	if filetype == "cpp" then
		setup_cpp_colors()
	elseif filetype == "lua" then
		setup_lua_colors()
	elseif filetype == "R" then
		setup_R_colors()
	end
end

setup_colors_for_filetype("R")
setup_colors_for_filetype("lua")
setup_colors_for_filetype("cpp")
