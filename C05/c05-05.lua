function Polynomial(t, x)
    local n = #t
    local sum = t[1]
    local xn = 1
    for i = 2, n do
        xn = xn * x
        sum = sum + t[i] * xn
    end
    return sum
end