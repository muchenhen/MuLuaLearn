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
print(a1.have)
a1:Cost(10)
print(a1.have)

local a2 = Account:new()
print(a2.have)

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
print(A.have)
print(spA.have)
