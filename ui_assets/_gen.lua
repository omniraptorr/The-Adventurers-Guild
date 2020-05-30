local repoName = "Fly-n-dad/The-Adventurers-Guild/"
local branch = "self_hosted_ui"
local basePath = "/ui_assets/"
local baseUrl = "https://raw.githubusercontent.com/" .. repoName .. branch .. basePath

local function formatLinks(path, nameTable)
  for i,name in ipairs(nameTable) do
    nameTable[i] = {
      name = path .. "/" .. name,
      url = baseUrl .. path .. "/" .. name .. ".png"
    }
    print("name is " .. nameTable[i].name)
  end
  return nameTable
end

return formatLinks
