require('base')
require('highlights')
require('maps')
require('plugins')

local has = function(x)
	return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
	require('macos')
end
if is_win then
	require('windows')
end


-- load snippets
local luasnip = require("luasnip")

-- html snippets in javascript and javascriptreact
luasnip.snippets = {
	html = {}
}

luasnip.snippets.javascript = luasnip.snippets.html
luasnip.snippets.javascriptreact = luasnip.snippets.html
luasnip.snippets.typescriptreact = luasnip.snippets.html
luasnip.snippets.htmldango = luasnip.snippets.html

require("luasnip/loaders/from_vscode").load({ include = { "html" } })
require("luasnip/loaders/from_vscode").lazy_load()
