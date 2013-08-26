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

return half()
