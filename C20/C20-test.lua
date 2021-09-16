local Set = {}

-- 创建元表，为Set添加元方法
local mt = {}

-- 为Set添加new方法根据指定列表添加一个新的集合
function Set.new(l)
    local set = {}
    setmetatable(set, mt)
    for _, v in ipairs(l) do
        set[v] = true
    end
    return set
end

-- 将a,b两个人set联合
function Set.union(a, b)
    local res = Set.new{}
    for k in pairs(a) do
        res[k] = true
    end
    for k in pairs(b) do
        res[k] = true
    end
    return res
end

function PrintSet(set)
    for key, value in pairs(set) do
        print(key, value)
    end
end

local s1 = Set.new{10, 20, 30, 50}
local s2 = Set.new{30}

PrintSet(s1)
PrintSet(s2)

-- 为原表添加原方法
mt.__add = Set.union

-- Set可以进行加法运算
local s3 = s1 + s2
PrintSet(s3)

-- 给Set添加tostring方法
function Set.tostring(set)
    local s = {}
    for k in pairs(set) do
        s[#s+1] = k
    end
    return table.concat(set, ", ")
end
mt.__tostring