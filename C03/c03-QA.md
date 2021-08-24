# C03-3.1

0x12 十六进制，表示十进制的18

0xA 十六进制，10

0xFFFFFFFF = 4294967295

0x1P10 = 1024

0x0.1p1 = 0.125

0xABFG 十六进制没有G 该进位了

# C03-3.2

第一个 math.maxinteger * 2 = -2

超过maxinteger会回环，丢弃最高位，乘2相当于左移一位，末尾补0，符号位是1，所以是-2

最小值，左移一位，末尾补0，符号位是0，末尾是0，所以是0

##### TODO:最大值乘最大值，最小值乘最小值

# C03-3.3

lua中取模运算的定义：

a%b = a-((a//b)*b)

floor除法会对得到的除法结果向负无穷取整

-10 //3 得到-3.3333 向负无穷取整得到-4，-10 - （-4*3）得到2

10  // 3 得到3.3333 floor得到3 10- (3*3) = 1

# C03-3.5

问题可以理解为有没有一个整数除以2的整数次幂时结果为12.7和5.5

```lua
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
```

# C03-06

圆锥体体积公式
$$
V = S *H/3
$$
底面积乘高乘三分之一，至少需要知道底面半径和高度，已知母线和轴线夹角可以得到底面半径

```lua
-- 根据高度，母线和轴线夹角获得底面半径
function GetRadius(h, a)
    local r = math.tan(math.rad(a)) * h
    return r
end

function GetV(h, a)
    local r = GetRadius(h, a)
    return math.pi * (r ^ 2) * h * (1 / 3)
end
```

# C03-07

Box-Muller-Wiener算法可以转换均匀分布和随机分布

```lua
function BoxMullerWiener()
    local x = math.random()
    local y = math.random()
    x = x == 0 and 1 or x
    y = y == 0 and 1 or y
    return math.sqrt((-2 * (math.log(x))) * math.sin(2 * math.pi * y))
end

print(BoxMullerWiener())
```

