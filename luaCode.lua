--code generator By: CptDave
require("data")
code = {}

local function make(length, usenum, usechar)

	if string.lower(usenum) ~= "y" and string.lower(usenum) ~= "n" or string.lower(usechar) ~= "y" and string.lower(usechar) ~= "n" then
		print("error 1, code requires either letters or number.")
		return
	elseif string.lower(usenum) == "n" and string.lower(usechar) == "n" then
		print("error 2, requires either numbers, letters or both.")
		return
	elseif type(length) ~= "number" then
		print("error 3, required number for length.")
		return
	end


	for i=1,length do
		if string.lower(usenum) == "y" and string.lower(usechar) == "y" then
			--print("im running")--check
			a = half()
			if a then
				--print("true")
				slot = getNum()
			else
				--print("false")
				slot = getChar()
			end
		elseif string.lower(usenum) == "y" and string.lower(usechar) == "n" then
			slot = getNum()
		elseif string.lower(usenum) == "n" and string.lower(usechar) == "y" then
			slot = getChar()
		end

		code[i] = slot

	end
	--print("\n")
	print("Your Code Is: ")
	for i=1, length do
		io.write(code[i])
	end
	print("\n")
end


--start
io.write("Cpt. Dave's Code Generator!\n")

io.write("Number of Digits? ")
local a = tonumber(io.read())
io.write("Use numbers?(y/n) ")
local b = tostring(io.read())
io.write("Use letters?(y/n) ")
local c = tostring(io.read())


make(a, b, c)
