# C05-5.1
输出分别是 monday, sunday, sunday
t相当于 t = {sunday = "monday", "monday" = "monday"}

# C05-5.2
这四个a是同一个table
a.a.a.a = 3之后，a.a变成3

# C05-5.3


# C05-5.4
```lua
function Polynomial(t, x)
    local n = #t
    local sum = 0
    for i = 1, n do
        sum = sum + t[i] * x ^ (i - 1)
    end
    return sum
end
```

# C05-5.5
```lua
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
```
