require("data")

local pick = char[math.random(1, #char)]
--print(pick)
local uplow = math.random(1,2)
if uplow == 1 then
	pick = string.upper(pick)
else
	pick = string.lower(pick)
end

--print(pick)
return pick
