local x = 1
local y = 1
local z = 1

local a = (x and y and (not z)) or ((not y) and x)
local b = x and y and not z or not y and x

print(a,b) -- false false