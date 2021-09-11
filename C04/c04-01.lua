local str = 
[==[
<![CDATE[
	Hello world
]]>]==]

print(str)

str = "\060\033\091CDATA\091\010\009Hello\032world\010\093\093\062"
print(str)