-- 根据高度，母线和轴线夹角获得底面半径
function GetRadius(h, a)
    local r = math.tan(math.rad(a)) * h
    return r
end

function GetV(h, a)
    local r = GetRadius(h, a)
    return math.pi * (r ^ 2) * h * (1 / 3)
end
