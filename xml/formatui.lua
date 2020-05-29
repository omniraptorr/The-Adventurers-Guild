local serpent = require "serpent/src/serpent"

local xml_order = {tag = 1, attributes = 2, value = 3, children = 4}

local function comparekeys(k1, k2)
  local v1 = xml_order[k1]
  local v2 = xml_order[k2]
  if not v1 or not v2 then
    return k1 < k2
  end
  return xml_order[k1] < xml_order[k2]
end

local function mysort(k, o) -- k=keys, o=original table
  table.sort(k, comparekeys)
end

return function(obj)
  obj = obj or Global
  return serpent.block(obj.UI.getXmlTable(), {sortkeys = mysort, comment = false})
end
