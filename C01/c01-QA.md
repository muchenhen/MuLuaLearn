# C01-1.1
```lua
function Fact(n)
    if n == 0 then
        return 1
    else
        return n * Fact(n - 1)
    end
end
```

明显可以看出，如果n小于0，无法结束递归，堆栈会溢出

# C01-1.4

| ___      | 有效标识       |
| -------- | -------------- |
| _end     | 有效           |
| End      | 有效           |
| end      | 关键字         |
| until?   | 问号是非法字符 |
| nil      | 关键字         |
| NULL     | 关键字         |
| one-step | -是非法字符    |

# C01-1.5

#### false

type()返回的是string类型，string 和 nil 一定不相等
所以在使用type进行类型判断的时候比较的对象是字符串

# C01-1.6

可以直接和true和false比较

```lua
function IsBoolean(n)
  return (n == true or n == false)
end

local a = true
local b = false
local c = 100
print(IsBoolean(a)) -- true
print(IsBoolean(b)) -- true
print(IsBoolean(c)) -- false
```

# C01-1.7

not优先级大于and大于or

所以从语义优先级上来看，这里面的所有括号都不需要

但是为了可读性感觉加上比较好，个人喜欢加括号= =

```lua
local x = 1
local y = 1
local z = 1

local a = (x and y and (not z)) or ((not y) and x)
local b = x and y and not z or not y and x

print(a,b) -- false false
```



# C01-1.8

print(arg[0])

arg是预先定义的全局变量，获取解释器传入的参数，书中的例子：

% lua script a b c 

arg[0] = "script"
