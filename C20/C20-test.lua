local Set = {}

-- 为Set添加new方法根据指定列表添加一个新的集合
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

for key, value in pairs(s2) do
    print(key, value)
end

-- 创建元表，为Set添加元方法