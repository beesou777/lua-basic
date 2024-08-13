-- local name = "World"
-- local age = 42
-- _G.GlobalVar = 10  -- this is global variables 
-- print("Hello, my name is  " .. name .. ". And I am " .. age .. " years old. And i am not married. " .. _G.GlobalVar)

-- print(string.lower(name))
-- print(string.upper(name))

-- print(string.format("Hello, my name is %s. And I am %d years old. And i am not married. %d", name, age, _G.GlobalVar))

-- print(string.len(name))


-- for 

-- for i = 1, 10 do
--     print(i)
-- end

-- if else

-- if name == "World" then
--     print("Hello, World")
-- else
--     print("Hello, " .. name)
-- end

-- while loop and do while loop

-- local i = 0

-- while i < 10 do
--     print(i)
--     i = i + 1
-- end


-- local j = 0

-- repeat
--     print(j)
--     j = j + 1
-- until j >= 10


-- break and continue

-- for i = 1, 10 do
--     if i == 5 then
--         break
--     end
--     print(i)
-- end

-- io 

-- io.write("Enter your name: ")
-- local name = io.read()

-- print("Hello, " .. name)


-- local arr = {1, 2, 3, 4, 5 ,{'name', 'age'}}
-- for i, v in ipairs(arr) do
--     print(i, v)
-- end

-- insert

-- local arr = {1, 2, 3, 4, 5 ,{'name', 'age'}}

-- table.insert(arr, 'hello')
-- table.insert(arr, 'world')

-- for i, v in ipairs(arr) do
--     print(i, v)
-- end


-- function 

-- function add(a, b)
--     return a + b
-- end

-- print(add(1, 2))


-- local function sub(a, b)
--     return a - b
-- end

-- print(sub(1, 2))


-- multi array

-- local arr = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}

-- print(#arr[2])

-- working with file 

-- local file = io.open("test.txt", "w")

-- file:write("Hello, World text changed")
-- file:close()

-- local file = io.open("test.txt", "r")

-- local content = file:read("*a")
-- print(content)

-- local file2 = io.open("myFiles.txt", "w")

-- if file2 ~= nil then
--     file2: write("this is my file")
--     file2: close()
-- else
--     print("file not found")
-- end


-- package

-- local mod = require("mod")
-- print(mod.sum(1, 2))
-- print(mod.SayHello("bishwa"))


-- oop

-- local Person = {
--     name = "bishwa",
--     age = 21
-- }

-- function Person:SayHello()
--     print("Hello, my name is " .. self.name .. ". I am " .. self.age .. " years old.")
-- end

-- Person:SayHello()

local function Pet(name)
    age = 10
    return {
        name = name or "dog",
        daysAlive = age * 356,
        speak = function (self)
            if self.name == "dog" then
                print("bark")
            else
                print("meow")
            end
        end,
        feed = function (self)
            print("eating", self.name)
        end
    }
end


-- local dog = Pet("dog")
-- local cat = Pet("cat")
-- dog:speak()
-- dog:feed()

-- cat:feed()
-- cat:feed()


-- inheritance

local function Dog(name,breed,loyalty)
    local dog = Pet(name)
    dog.breed = breed or "german shepherd"
    dog.loyalty = loyalty or 0
    return dog
end

local myDog = Dog("tommmy","poddle", 10)
print(myDog.name, myDog.breed, myDog.loyalty)

