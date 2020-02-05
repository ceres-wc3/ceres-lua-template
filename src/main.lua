-- example creating a new object
compiletime(function()
    local customFootman = currentMap.objects.unit['hfoo']:clone()
    customFootman.Name = "A Custom Footman"
    currentMap.objects.unit['x000'] = customFootman
end)

-- example exposing data from the compile stage to the script
local metadata = compiletime(function()
    local metadata = {}
    for id, object in pairs(currentMap.objects.unit.all) do
        metadata[id] = object.umdl
    end

    return metadata
end)

-- example creating our custom unit
local player = Player(0)
local unit = CreateUnit(player, FourCC('x000'), 0, 0, 0)

-- this will print the model paths of our units
print(metadata['x000'])
print(metadata['ncrb'])
print("Hello, world!")
