

local genTable = require("The-Adventurers-Guild/ui_assets/_gen")


local path = "main_menu"
local contents = {
  "adventure",
  "background",
  "guild",
  "settlements",
  "traveling"
}

return genTable(path, contents)
