# C04-4.1

lua中多行字符串和多行注释类似，使用一双方括号声明多行字符串
或者将换行都改成转义字符

```lua
local str = 
[==[
<![CDATE[
	Hello world
]]>]==]

print(str)

str = "\060\033\091CDATA\091\010\009Hello\032world\010\093\093\062"
print(str)
```

# C04-4.2

在lua中可以用转义序列\ddd和\xhh来表示字符，转义字符可以改为这两种形式
比如\n可以写成\10或者\x0a

```lua
local str1 = "a\nb"
local str2 = "a\10b"
local str3 = "a\x0ab"
print(str1)
print(str2)
print(str3)s
```