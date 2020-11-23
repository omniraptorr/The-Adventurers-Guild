local genTable = require("The-Adventurers-Guild/ui_assets/_gen")
local path = "class_menu"
local contents = {
  "please_choose_your_class",
  "barbarian",
  "wizard",
  "dwarf",
  "elf",
  "pit_fighter",
  "wardancer",
  "witch_hunter",
  "imperial_noble",
}

return genTable(path, contents)
