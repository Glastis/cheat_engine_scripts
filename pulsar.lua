--
-- User: Glastis
-- Date: 05/04/2018
-- Time: 23:25
--

--[[
----	CONSTANTS
]]--

local MONEY_ADDRESS = 0x6B55C700


--[[
----	MONEY
]]--
function add_money(amount)
	local money

	money = {}
	money.address = MONEY_ADDRESS
	money.value = readInteger(money.address)

	writeInteger(money.address, money.value + amount)
	return money.value, readInteger(money.address)
end

--[[
----	MAIN
]]--
function core()
	local a
	local b

	a,b = add_money(1000)
	print('Money increased from ' .. a .. ' to ' .. b)
end

core()

