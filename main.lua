#version 2
-- McPuppet Basic Clothing Pack Vol 1: 27 garments (pack_items.lua) for the McPuppet Inventory System, registered
-- through the public calls of inventory_api.lua, as anyone's pack is. The Inventory mod does the rest: it puts the
-- clothes on the characters and applies their stats. Without it this mod does nothing.
#include "inventory_api.lua"
#include "pack_items.lua"

WardrobePackItems()

function server.init()
	InventoryServerInit()
end

function client.tick(dt)
	InventoryClientTick()            -- (registers the clothes; spawns them from this mod's own files, on every machine)
end
