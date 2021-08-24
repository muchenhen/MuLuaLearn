function GetNumber(num)
    for i = 1, 64 do
        if math.tointeger((2 ^ i) * num) ~= nil then
            -- 找到一个就停
            return i, 2 ^ i
        end
    end
    return false, false
end

local i, number = GetNumber(12.7)
print(i, number)
i, number = GetNumber(5.5)
print(i, number)