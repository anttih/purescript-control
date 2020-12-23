
local function slice(xs, idx)
  local result = {}
  local len = #xs
  local i = idx
  while i <= len do
    table.insert(result, xs[i])
    i = i + 1
  end
  return result
end

local function arrayExtend(f)
  return function(xs)
    local result = {}
    for i = 1, #xs do
      table.insert(result, f(slice(xs, i)))
    end
    return result
  end
end

return {
  arrayExtend = arrayExtend
}
