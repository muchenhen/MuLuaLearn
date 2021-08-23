function IsBoolean(n)
    return (n == true or n == false)
end

local a = true
local b = false
local c = 100
print(IsBoolean(a)) -- true
print(IsBoolean(b)) -- true
print(IsBoolean(c)) -- false