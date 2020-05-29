-- package.path = package.path .. ";/Users/andrey/TTS/lib/Tabletop-Simulator-Lua-Classes/Color/?.lua"
-- local Color = require "Tabletop-Simulator-Lua-Classes/Color/color"

-- color format: "normalColor|highlightedColor|pressedColor|disabledColor"
local function makeColorString(normalColor, highlightedColor, pressedColor, disabledColor)
  local colors = {normalColor, highlightedColor, pressedColor, disabledColor}
  for i = 1, 4 do
    colors[i] = colors[i] and Color:toHex(colors[i]) or ""
  end
  return table.concat(colors, "|")
end
-- print(makeColorString("g", "f"))


local mainMenuButtonColors = {

}

local mainMenuButton = {
  tag = "Button",
  attributes = {
    weird = {"a", "b"},
    class = "start_menu",
    colors = "#FFFFFF00|#FFFFFF33|#FFFFFF99|#FFFFFF00",
    onClick = "UIButtonClick"
  },
}

return {
  tag = "Defaults",
  attributes = {},
  children = {
    mainMenuButton,
  }
}
