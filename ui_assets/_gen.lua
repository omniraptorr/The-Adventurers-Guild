local repoName = "https://raw.githubusercontent.com/"
local branch = "self_hosted_ui"
local basePath = "/ui_assets/"
local baseUrl = "https://github.com/" .. repoName .. branch .. basePath

local function formatLinks(path, nameTable)
  for i,name in ipairs(nameTable) do
    nameTable[i] = {
      name = name,
      url = baseUrl .. path .. ".png"
    }
  end
  return nameTable
end

local CustomUIAssets = {}
local function add_assets(sourceTable)
  local names = {}
  for _,entry in ipairs(CustomUIAssets) do
    names[entry.name] = true
  end
  for _,v in ipairs(sourceTable) do
    if names[v.name] then
      error("name " .. v.name .. " already in list of assets!")
    end
    print("v" .. v.name)
    CustomUIAssets[#CustomUIAssets + 1] = v
  end
end

-- unfortunately require is always literal. these should really be repoName .. basePath
add_assets(require("The-Adventurers-Guild/ui_assets/main_menu/_contents"))
add_assets(require("The-Adventurers-Guild/ui_assets/travel_menu/_contents"))

return formatLinks, CustomUIAssets
