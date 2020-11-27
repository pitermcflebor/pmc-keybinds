
_G.RegisteredKeys = {}

AddEventHandler('key:register', function(layout, keyname)
	if RegisteredKeys[layout] == nil then RegisteredKeys[layout] = {} end
	if RegisteredKeys[layout][keyname] == nil then
		RegisteredKeys[layout][keyname] = true
		RegisterKeyMapping(('+keypress %s %s'):format(layout, keyname), 'Binded '..keyname, layout:upper(), keyname:upper())
	end
end)

RegisterCommand('+keypress', function(s, args)
	local layout = args[1]
	local keyname = args[2]
	if layout and keyname then
		layout, keyname = layout:lower(), keyname:lower()
		if RegisteredKeys[layout] ~= nil and RegisteredKeys[layout][keyname] ~= nil then
			TriggerEvent(('key:press:%s:%s'):format(layout, keyname))
		end
	end
end, false)

RegisterCommand('-keypress', function(s, args)
	local layout = args[1]
	local keyname = args[2]
	if layout and keyname then
		layout, keyname = layout:lower(), keyname:lower()
		if RegisteredKeys[layout] ~= nil and RegisteredKeys[layout][keyname] ~= nil then
			TriggerEvent(('key:release:%s:%s'):format(layout, keyname))
		end
	end
end, false)
