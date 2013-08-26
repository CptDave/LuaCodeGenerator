

char = {'a','b','c','d','e','f','g','e','f','g','h','j','k','l','m','n','o','p','q','u','r','s','t','u','v','w','x','y','z'}
num = {1,2,3,4,5,6,7,8,9,0}

--function that returns true or false
function half()
	local breaker = math.random(1,2)
	if breaker == 1 then
		--print("true")
		return true
	else
		--print("false")
		return false
	end
end

--return half()


function getChar()
	local pick = char[math.random(1, #char)]
	--print(pick)
	local uplow = math.random(1,2)
	if uplow == 1 then
		pick = string.upper(pick)
		return pick
	else
		pick = string.lower(pick)
		return pick
	end

end


function getNum()
	local pick = num[math.random(1,#num)]
	return pick
end
