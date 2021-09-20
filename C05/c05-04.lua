function Polynomial(t, x)
    local n = #t
    local sum = 0
    for i = 1, n do
        sum = sum + t[i] * x ^ (i - 1)
    end
    return sum
end
