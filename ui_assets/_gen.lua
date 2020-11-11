local repoName = "Fly-n-dad/The-Adventurers-Guild/"
local branch = "save,-character-menus"
local basePath = "/ui_assets/"
local baseUrl = "https://raw.githubusercontent.com/" .. repoName .. branch .. basePath

-- keep in mind folder name/path should match the xml class name!
local function formatLinks(path, nameTable)
  for i,name in ipairs(nameTable) do
    nameTable[i] = {
      name = path .. "/" .. name,
      url = baseUrl .. path .. "/" .. name .. ".png"
    }
  end
  return nameTable
end

return formatLinks
