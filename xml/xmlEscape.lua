-- ripped from https://github.com/ccxvii/snippets/blob/master/xml.lua
-- could come in useful for storing arbitrary strings (such as json) in xml attributes. thanks eldin for the tip

local sbyte, schar = string.byte, string.char
local function sub_hex_ent(s) return sbyte(tonumber(s, 16)) end
local function sub_dec_ent(s) return schar(tonumber(s)) end
local gsub = string.gsub

local function unescape(s)
	s = gsub(s, "&lt;", "<")
	s = gsub(s, "&gt;", ">")
	s = gsub(s, "&apos;", "'")
	s = gsub(s, "&quot;", '"')
	s = gsub(s, "&#x(%x+);", sub_hex_ent)
	s = gsub(s, "&#(%d+);", sub_dec_ent)
	s = gsub(s, "&amp;", "&")
	return s
end

local function escape(s)
	s = gsub(s, "&", "&amp;")
	s = gsub(s, "<", "&lt;")
	s = gsub(s, ">", "&gt;")
	s = gsub(s, "'", "&apos;")
	s = gsub(s, '"', "&quot;")
	return s
end

return({escape = escape, unescape = unescape})
