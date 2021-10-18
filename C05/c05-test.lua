local table1 = {
    [1] = "a",
    [2] = "b"
}
for key, value in pairs(table1) do
    print("table1", key, value)
end

local table2 = table1
table2[2] = "c"
for key, value in pairs(table2) do
    print("table1", key, value)
end
for key, value in pairs(table1) do
    print("table2", key, value)
end

local a = {}
a[1] = 1
a[10000] = 10000
print(#a)
a = {1,2,3,nil,nil}
print(#a)
a = {1,2,3,nil,4}
print(#a)

sunday = "monday"
monday = "sunday"
t = {sunday = "monday", [sunday] = monday}
print(t.sunday, t[sunday], t[t.sunday], t["monday"])

a = {}
a.a = a
print(a)
print(a.a)
print(a.a.a)
print(a.a.a.a)
a.a.a.a = 3
print(a)
print(a.a)