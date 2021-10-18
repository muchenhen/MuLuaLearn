Account = {have = 100}

function Account:new(o)
    o = o or {}
    self.__index = self
    -- 将Account直接用作元表
    setmetatable(o, self)
    return o
end

function Account:Cost(n)
    if self.have >= n then
        self.have = self.have - n
    else
        print("cost cannot over have")
    end
end

local a1 = Account:new()
print("a1.have", a1.have)
a1:Cost(10)
print("a1.have", a1.have)

local a2 = Account:new()
print("a2.have", a2.have)

-- SpecialAccount继承了Account的方法
SpeciAccount = Account:new()

-- 重载了Account的Cost方法
function SpeciAccount:Cost(n)
    self.have = self.have - n
end

local A = Account:new()
local spA = SpeciAccount:new()
A:Cost(110)
spA:Cost(110)
print("A.have", A.have)
print("spA.have", spA.have)

function class(className, baseCalss)
    local newCalss = {}
    local newMate = {}
    if baseCalss then
        newMate.__index = baseCalss
        setmetatable(newCalss, newMate)
    else
        newMate.__index = newCalss
        setmetatable(newCalss, newMate)
    end
    newCalss.__name = className
    newCalss.__uid = className .. "_" .. tostring(newCalss)
    return newCalss
end

VIP = class("VIP", SpeciAccount)
local V1 = VIP:new()
function VIP:Save(n)
    self.have = self.have + n * 2
end
V1:Save(5)
V1:Cost(110)
print("V1.have", V1.have)
print("V1.__uid", V1.__uid)
print("V1.__name", V1.__name)
