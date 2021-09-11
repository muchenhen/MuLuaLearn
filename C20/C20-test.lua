local Set = {}

function Set.new(l)
    local set = {}
    for _, v in ipairs(l) do
        set[v] = true
    end
    return set
end

local s1 = Set.new{10, 20, 30, 50}
local s2 = Set.new{30}

for key, value in pairs(s1) do
    print(key, value)
end


print(s1)
print(s2)