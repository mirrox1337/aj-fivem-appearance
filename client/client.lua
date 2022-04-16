QBCore = exports['qb-core']:GetCoreObject()

local zoneName = nil
local inZone = false
local allMyOutfits = {}
local isPurchaseSuccessful = false
local PlayerData = {}
local PlayerJob = {}
local PlayerGang = {}

local skinData = {
    ["face"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["face2"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["facemix"] = {
        skinMix = 0,
        shapeMix = 0,
        defaultSkinMix = 0.0,
        defaultShapeMix = 0.0,
    },
    ["pants"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["hair"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["eyebrows"] = {
        item = -1,
        texture = 1,
        defaultItem = -1,
        defaultTexture = 1,
    },
    ["beard"] = {
        item = -1,
        texture = 1,
        defaultItem = -1,
        defaultTexture = 1,
    },
    ["blush"] = {
        item = -1,
        texture = 1,
        defaultItem = -1,
        defaultTexture = 1,
    },
    ["lipstick"] = {
        item = -1,
        texture = 1,
        defaultItem = -1,
        defaultTexture = 1,
    },
    ["makeup"] = {
        item = -1,
        texture = 1,
        defaultItem = -1,
        defaultTexture = 1,
    },
    ["ageing"] = {
        item = -1,
        texture = 0,
        defaultItem = -1,
        defaultTexture = 0,
    },
    ["arms"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["t-shirt"] = {
        item = 1,
        texture = 0,
        defaultItem = 1,
        defaultTexture = 0,
    },
    ["torso2"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["vest"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["bag"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["shoes"] = {
        item = 0,
        texture = 0,
        defaultItem = 1,
        defaultTexture = 0,
    },
    ["mask"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["hat"] = {
        item = -1,
        texture = 0,
        defaultItem = -1,
        defaultTexture = 0,
    },
    ["glass"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["ear"] = {
        item = -1,
        texture = 0,
        defaultItem = -1,
        defaultTexture = 0,
    },
    ["watch"] = {
        item = -1,
        texture = 0,
        defaultItem = -1,
        defaultTexture = 0,
    },
    ["bracelet"] = {
        item = -1,
        texture = 0,
        defaultItem = -1,
        defaultTexture = 0,
    },
    ["accessory"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["decals"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["eye_color"] = {
        item = -1,
        texture = 0,
        defaultItem = -1,
        defaultTexture = 0,
    },
    ["moles"] = {
        item = 0,
        texture = 0,
        defaultItem = -1,
        defaultTexture = 0,
    },
    ["nose_0"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["nose_1"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["nose_2"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["nose_3"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },

    ["nose_4"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["nose_5"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["cheek_1"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["cheek_2"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["cheek_3"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["eye_opening"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["lips_thickness"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["jaw_bone_width"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["eyebrown_high"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["eyebrown_forward"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["jaw_bone_back_lenght"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["chimp_bone_lowering"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["chimp_bone_lenght"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["chimp_bone_width"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["chimp_hole"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
    ["neck_thikness"] = {
        item = 0,
        texture = 0,
        defaultItem = 0,
        defaultTexture = 0,
    },
}

local function typeof(var)
    local _type = type(var);
    if(_type ~= "table" and _type ~= "userdata") then
        return _type;
    end
    local _meta = getmetatable(var);
    if(_meta ~= nil and _meta._NAME ~= nil) then
        return _meta._NAME;
    else
        return _type;
    end
end

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        Wait(200)
        PlayerData = QBCore.Functions.GetPlayerData()
		PlayerJob = PlayerData.job
		PlayerGang = PlayerData.gang
    end
end)

-- Net Events

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.TriggerCallback('fivem-appearance:getPlayerSkin', function(appearance)
		exports['fivem-appearance']:setPlayerAppearance(appearance)
		PlayerData = QBCore.Functions.GetPlayerData()
		PlayerJob = PlayerData.job
		PlayerGang = PlayerData.gang
		
		if Config.Debug then  -- This will detect if the player model is set as "player_zero" aka michael. Will then set the character as a freemode ped based on gender.
			Wait(5000)
			if GetEntityModel(PlayerPedId()) == `player_zero` then
				print('Player detected as "player_zero", Starting CreateFirstCharacter event')
				TriggerEvent('qb-clothes:client:CreateFirstCharacter')
			end
		end
		
	end)
end)

RegisterNetEvent('qb-clothes:client:CreateFirstCharacter', function()  -- Event renamed so you dont need to change anything for this to work... hopefully....
	QBCore.Functions.GetPlayerData(function(PlayerData)
		local skin = 'mp_m_freemode_01'
		if PlayerData.charinfo.gender == 1 then
            skin = "mp_f_freemode_01" 
        end
		exports['fivem-appearance']:setPlayerModel(skin)
		local config = {
			ped = true,
			headBlend = true,
			faceFeatures = true,
			headOverlays = true,
			components = true,
			props = true,
		}
		exports['fivem-appearance']:setPlayerAppearance(appearance)
		exports['fivem-appearance']:startPlayerCustomization(function(appearance)
			if (appearance) then
				TriggerServerEvent('fivem-appearance:save', appearance)
				print('Player Clothing Saved')
			else
				print('Canceled')
			end
		end, config)
	end)
end, false)

AddEventHandler('fivem-appearance:hasExitedMarker', function(zone)
	CurrentAction = nil
end)

RegisterNetEvent('fivem-appearance:clothingShop', function()
	exports['qb-menu']:openMenu({
        {
            header = "👚 | Klädaffärsalternativ",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "Köp Kläder - "..Config.Money.."kr",
			txt = "Ett brett utbud av plagg att bära",
            params = {
                event = "fivem-appearance:clothingMenu",
            }
        },
		{
            header = "Ändra outfit",
			txt = "Välj från någon av dina sparade outfits",
            params = {
                event = "fivem-appearance:pickNewOutfit",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
		{
            header = "Spara ny outfit",
			txt = "Spara en ny outfit du kan använda senare",
            params = {
                event = "fivem-appearance:saveOutfit",
            }
        },
		{
            header = "Radera outfit",
			txt = "Vi tyckte inte heller 🤣",
            params = {
                event = "fivem-appearance:deleteOutfitMenu",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
    })
end)

RegisterNetEvent('fivem-appearance:pickNewOutfit', function(data)
    local id = data.id
    local number = data.number
	TriggerEvent('fivem-appearance:getOutfits')
	Wait(150)
	local outfitMenu = {
        {
            header = '< Gå tillbaka',
            params = {
                event = 'fivem-appearance:clothingShop'
            }
        }
    }
    for i=1, #allMyOutfits, 1 do
        outfitMenu[#outfitMenu + 1] = {
            header = allMyOutfits[i].name,
            params = {
                event = 'fivem-appearance:setOutfit',
                args = {
					-- number = (1 + i),
					ped = allMyOutfits[i].pedModel, 
					components = allMyOutfits[i].pedComponents, 
					props = allMyOutfits[i].pedProps
				}
            }
        }
    end
    exports['qb-menu']:openMenu(outfitMenu)
end)

RegisterNetEvent('fivem-appearance:getOutfits', function()
	TriggerServerEvent('fivem-appearance:getOutfits')
end)

RegisterNetEvent('fivem-appearance:sendOutfits', function(myOutfits)
	local Outfits = {}
	for i=1, #myOutfits, 1 do
		table.insert(Outfits, {id = myOutfits[i].id, name = myOutfits[i].name, pedModel = myOutfits[i].ped, pedComponents = myOutfits[i].components, pedProps = myOutfits[i].props})
	end
	allMyOutfits = Outfits
end)

RegisterNetEvent('fivem-appearance:setOutfit', function(data)
	local pedModel = data.ped
	local pedComponents = data.components
	local pedProps = data.props
	local playerPed = PlayerPedId()
	local currentPedModel = exports['fivem-appearance']:getPedModel(playerPed)
	if currentPedModel ~= pedModel then
    	exports['fivem-appearance']:setPlayerModel(pedModel)
		Wait(500)
		playerPed = PlayerPedId()
		exports['fivem-appearance']:setPedComponents(playerPed, pedComponents)
		exports['fivem-appearance']:setPedProps(playerPed, pedProps)
		local appearance = exports['fivem-appearance']:getPedAppearance(playerPed)
		TriggerServerEvent('fivem-appearance:save', appearance)
	else
		exports['fivem-appearance']:setPedComponents(playerPed, pedComponents)
		exports['fivem-appearance']:setPedProps(playerPed, pedProps)
		local appearance = exports['fivem-appearance']:getPedAppearance(playerPed)
		TriggerServerEvent('fivem-appearance:save', appearance)
	end
	-- TriggerEvent('fivem-appearance:clothingShop')
end)

RegisterNetEvent('fivem-appearance:saveOutfit', function()
	local keyboard = exports['qb-input']:ShowInput({
        header = "Namnge din outfit",
        submitText = "Skapa outfit",
        inputs = {
            {
                text = "Outfit Namn",
                name = "input",
                type = "text",
                isRequired = true
            },
        },
    })

	if keyboard ~= nil then
		local playerPed = PlayerPedId()
		local pedModel = exports['fivem-appearance']:getPedModel(playerPed)
		local pedComponents = exports['fivem-appearance']:getPedComponents(playerPed)
		local pedProps = exports['fivem-appearance']:getPedProps(playerPed)
		Wait(500)
		TriggerServerEvent('fivem-appearance:saveOutfit', keyboard.input, pedModel, pedComponents, pedProps)
		QBCore.Functions.Notify('Outfit '..keyboard.input.. ' har sparats', 'success')
	end
end)

RegisterNetEvent('fivem-appearance:deleteOutfitMenu', function(data)
    local id = data.id
    local number = data.number
	TriggerEvent('fivem-appearance:getOutfits')
	Wait(150)
	local DeleteMenu = {
        {
            header = '< Gå tillbaka',
            params = {
                event = 'fivem-appearance:clothingShop'
            }
        }
    }
    for i=1, #allMyOutfits, 1 do
        DeleteMenu[#DeleteMenu + 1] = {
            header = 'Radera "'..allMyOutfits[i].name..'"',
			txt = 'Du kommer aldrig att kunna få tillbaka den!',
            params = {
				event = 'fivem-appearance:deleteOutfit',
				args = allMyOutfits[i].id
			}
        }
    end
    exports['qb-menu']:openMenu(DeleteMenu)
end)

RegisterNetEvent('fivem-appearance:deleteOutfit', function(id)
	TriggerServerEvent('fivem-appearance:deleteOutfit', id)
	-- TriggerEvent('fivem-appearance:clothingShop')
	QBCore.Functions.Notify('Outfit raderas', 'error')
end)

RegisterNetEvent("fivem-appearance:purchase", function(bool)
    isPurchaseSuccessful = bool
end)

RegisterNetEvent('fivem-appearance:clothingMenu', function()
	TriggerServerEvent('fivem-appearances:buyclothing')
	Wait(500)
	if isPurchaseSuccessful then
		local config = {
			ped = false,
			headBlend = false,
			faceFeatures = false,
			headOverlays = false,
			components = true,
			props = true
		}
		
		exports['fivem-appearance']:startPlayerCustomization(function(appearance)
			if appearance then
				TriggerServerEvent('fivem-appearance:save', appearance)
                TriggerEvent('fivem-appearance:saveOutfit')
				print('Player Clothing Saved')
				Wait(1000) -- Wait is needed to clothing menu dosent overwrite the tattoos
				TriggerServerEvent('Select:Tattoos')
			else
				print('Canceled')
				Wait(1000) -- Wait is needed to clothing menu dosent overwrite the tattoos
				TriggerServerEvent('Select:Tattoos')
			end
		end, config)
	end
end)

RegisterNetEvent('fivem-appearance:barberMenu', function()
	local config = {
		ped = false,
		headBlend = false,
		faceFeatures = false,
		headOverlays = true,
		components = false,
		props = false
	}

	exports['fivem-appearance']:startPlayerCustomization(function (appearance)
		if appearance then
			TriggerServerEvent('fivem-appearance:save', appearance)
			print('Player Clothing Saved')
			Wait(1000) -- Wait is needed to clothing menu dosent overwrite the tattoos
			TriggerServerEvent('Select:Tattoos')
		else
			print('Canceled')
			Wait(1000) -- Wait is needed to clothing menu dosent overwrite the tattoos
			TriggerServerEvent('Select:Tattoos')
		end
	end, config)
end)

-- Backwords Events so you dont need to replace these

RegisterNetEvent('qb-clothing:client:openMenu', function()  -- Admin Menu clothing event
	Wait(500)
	local config = {
		ped = true,
		headBlend = true,
		faceFeatures = true,
		headOverlays = true,
		components = true,
		props = true
	}
	
	exports['fivem-appearance']:startPlayerCustomization(function(appearance)
		if appearance then
			TriggerServerEvent('fivem-appearance:save', appearance)
			print('Player Clothing Saved')
			Wait(1000) -- Wait is needed to clothing menu dosent overwrite the tattoos
			TriggerServerEvent('Select:Tattoos')
		else
			print('Canceled')
			Wait(1000) -- Wait is needed to clothing menu dosent overwrite the tattoos
			TriggerServerEvent('Select:Tattoos')
		end
	end, config)
end)

RegisterNetEvent('qb-clothing:client:openOutfitMenu', function()  -- Name is so that you dont have to replace the event, Used in Appartments, Bossmenu, etc...
	exports['qb-menu']:openMenu({
        {
            header = "👔 | Outfit-alternativ",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
		{
            header = "Ändra outfit",
			txt = "Välj från någon av dina sparade outfits",
            params = {
                event = "fivem-appearance:pickNewOutfitApp",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
		{
            header = "Spara ny outfit",
			txt = "Spara en ny outfit du kan använda senare",
            params = {
                event = "fivem-appearance:saveOutfit",
            }
        },
		{
            header = "Radera outfit",
			txt = "Vi tyckte inte heller 🤣",
            params = {
                event = "fivem-appearance:deleteOutfitMenu",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
    })
end)

RegisterNetEvent('qb-clothing:client:openWorkOutfits', function(datawork)  -- Name is so that you dont have to replace the event, Used in Appartments, Bossmenu, etc...
	exports['qb-menu']:openMenu({
        {
            header = "👔 | Outfit-alternativ",
            isMenuHeader = true,
        },
		{
            header = "Civilkläder",
			txt = "Ta på dina vanliga kläder",
            params = {
                event = "fivem-appearance:reloadskin",
            }
        },
		{
            header = "Arbetskläder",
			txt = "Välj arbetskläder",
            params = {
                event = "qb-clothes:pickWorkOutfitApp",
                args = datawork,
            }
        },
    })
end)

RegisterNetEvent('qb-clothes:pickWorkOutfitApp', function(datawork)
    Wait(150)
    local outfitDefMenu = {
        {
            header = '< Gå tillbaka',
            params = {
                event = 'qb-clothing:client:openWorkOutfits',
                args = datawork
            }
        }
    }
    if datawork ~= nil then
        for k, v in pairs(datawork) do
            outfitDefMenu[#outfitDefMenu + 1] = {
                header = v.outfitLabel,
                params = {
                    event = 'qb-clothing:client:loadWorkOutfit',
                    args = { oData = v, vData = datawork }
                }
            }
        end
        exports['qb-menu']:openMenu(outfitDefMenu)
    end
end)

RegisterNetEvent('qb-clothes:pickWorkOutfit', function(datawork)
	TriggerEvent('qb-clothes:getOutfits')
	Wait(150)
	local outfitMenu = {
        {
            header = '< Go Back',
            params = {
                event = 'qb-clothing:client:openWorkOutfits',
				args = datawork
            }
        }
    }
    for i=1, #allMyOutfits, 1 do
        outfitMenu[#outfitMenu + 1] = {
            header = allMyOutfits[i].name,
            params = {
                event = 'qb-clothes:setOutfit',
                args = {
					ped = allMyOutfits[i].pedModel, 
					components = allMyOutfits[i].pedComponents, 
					props = allMyOutfits[i].pedProps
				}
            }
        }
    end
    exports['qb-menu']:openMenu(outfitMenu)
end)

RegisterNetEvent('fivem-appearance:pickNewOutfitApp', function(data)
    local id = data.id
    local number = data.number
	TriggerEvent('fivem-appearance:getOutfits')
	Wait(150)
	local outfitMenu = {
        {
            header = '< Gå tillbaka',
            params = {
                event = 'qb-clothing:client:openOutfitMenu'
            }
        }
    }
    for i=1, #allMyOutfits, 1 do
        outfitMenu[#outfitMenu + 1] = {
            header = allMyOutfits[i].name,
            params = {
                event = 'fivem-appearance:setOutfit',
                args = {
					-- number = (1 + i),
					ped = allMyOutfits[i].pedModel, 
					components = allMyOutfits[i].pedComponents, 
					props = allMyOutfits[i].pedProps
				}
            }
        }
    end
    exports['qb-menu']:openMenu(outfitMenu)
end)

RegisterNetEvent('fivem-appearance:deleteOutfitMenuApp', function(data)
    local id = data.id
    local number = data.number
	TriggerEvent('fivem-appearance:getOutfits')
	Wait(150)
	local DeleteMenu = {
        {
            header = '< Gå tillbaka',
            params = {
                event = 'fivem-appearance:clothingShop'
            }
        }
    }
    for i=1, #allMyOutfits, 1 do
        DeleteMenu[#DeleteMenu + 1] = {
            header = 'Radera "'..allMyOutfits[i].name..'"',
			txt = 'Du kommer aldrig att kunna få tillbaka den!',
            params = {
				event = 'fivem-appearance:deleteOutfit',
				args = allMyOutfits[i].id
			}
        }
    end
    exports['qb-menu']:openMenu(DeleteMenu)
end)

RegisterNetEvent('qb-clothing:client:loadOutfit', function(oData)
    local ped = PlayerPedId()

    data = oData.outfitData

    if typeof(data) ~= "table" then data = json.decode(data) end

    for k, v in pairs(data) do
        skinData[k].item = data[k].item
        skinData[k].texture = data[k].texture
    end

    -- Pants
    if data["pants"] ~= nil then
        SetPedComponentVariation(ped, 4, data["pants"].item, data["pants"].texture, 0)
    end

    -- Arms
    if data["arms"] ~= nil then
        SetPedComponentVariation(ped, 3, data["arms"].item, data["arms"].texture, 0)
    end

    -- T-Shirt
    if data["t-shirt"] ~= nil then
        SetPedComponentVariation(ped, 8, data["t-shirt"].item, data["t-shirt"].texture, 0)
    end

    -- Vest
    if data["vest"] ~= nil then
        SetPedComponentVariation(ped, 9, data["vest"].item, data["vest"].texture, 0)
    end

    -- Torso 2
    if data["torso2"] ~= nil then
        SetPedComponentVariation(ped, 11, data["torso2"].item, data["torso2"].texture, 0)
    end

    -- Shoes
    if data["shoes"] ~= nil then
        SetPedComponentVariation(ped, 6, data["shoes"].item, data["shoes"].texture, 0)
    end

    -- Bag
    if data["bag"] ~= nil then
        SetPedComponentVariation(ped, 5, data["bag"].item, data["bag"].texture, 0)
    end

    -- Badge
    if data["badge"] ~= nil then
        SetPedComponentVariation(ped, 10, data["decals"].item, data["decals"].texture, 0)
    end

    -- Accessory
    if data["accessory"] ~= nil then
        if QBCore.Functions.GetPlayerData().metadata["tracker"] then
            SetPedComponentVariation(ped, 7, 13, 0, 0)
        else
            SetPedComponentVariation(ped, 7, data["accessory"].item, data["accessory"].texture, 0)
        end
    else
        if QBCore.Functions.GetPlayerData().metadata["tracker"] then
            SetPedComponentVariation(ped, 7, 13, 0, 0)
        else
            SetPedComponentVariation(ped, 7, -1, 0, 2)
        end
    end

    -- Mask
    if data["mask"] ~= nil then
        SetPedComponentVariation(ped, 1, data["mask"].item, data["mask"].texture, 0)
    end

    -- Bag
    if data["bag"] ~= nil then
        SetPedComponentVariation(ped, 5, data["bag"].item, data["bag"].texture, 0)
    end

    -- Hat
    if data["hat"] ~= nil then
        if data["hat"].item ~= -1 and data["hat"].item ~= 0 then
            SetPedPropIndex(ped, 0, data["hat"].item, data["hat"].texture, true)
        else
            ClearPedProp(ped, 0)
        end
    end

    -- Glass
    if data["glass"] ~= nil then
        if data["glass"].item ~= -1 and data["glass"].item ~= 0 then
            SetPedPropIndex(ped, 1, data["glass"].item, data["glass"].texture, true)
        else
            ClearPedProp(ped, 1)
        end
    end

    -- Ear
    if data["ear"] ~= nil then
        if data["ear"].item ~= -1 and data["ear"].item ~= 0 then
            SetPedPropIndex(ped, 2, data["ear"].item, data["ear"].texture, true)
        else
            ClearPedProp(ped, 2)
        end
    end
end)

RegisterNetEvent('qb-clothing:client:loadWorkOutfit', function(oData)
    local ped = PlayerPedId()
	local oData = oData.oData
    data = oData.outfitData

    if typeof(data) ~= "table" then data = json.decode(data) end

    for k, v in pairs(data) do
        skinData[k].item = data[k].item
        skinData[k].texture = data[k].texture
    end

    -- Pants
    if data["pants"] ~= nil then
        SetPedComponentVariation(ped, 4, data["pants"].item, data["pants"].texture, 0)
    end

    -- Arms
    if data["arms"] ~= nil then
        SetPedComponentVariation(ped, 3, data["arms"].item, data["arms"].texture, 0)
    end

    -- T-Shirt
    if data["t-shirt"] ~= nil then
        SetPedComponentVariation(ped, 8, data["t-shirt"].item, data["t-shirt"].texture, 0)
    end

    -- Vest
    if data["vest"] ~= nil then
        SetPedComponentVariation(ped, 9, data["vest"].item, data["vest"].texture, 0)
    end

    -- Torso 2
    if data["torso2"] ~= nil then
        SetPedComponentVariation(ped, 11, data["torso2"].item, data["torso2"].texture, 0)
    end

    -- Shoes
    if data["shoes"] ~= nil then
        SetPedComponentVariation(ped, 6, data["shoes"].item, data["shoes"].texture, 0)
    end

    -- Bag
    if data["bag"] ~= nil then
        SetPedComponentVariation(ped, 5, data["bag"].item, data["bag"].texture, 0)
    end

    -- Badge
    if data["badge"] ~= nil then
        SetPedComponentVariation(ped, 10, data["decals"].item, data["decals"].texture, 0)
    end

    -- Accessory
    if data["accessory"] ~= nil then
        if QBCore.Functions.GetPlayerData().metadata["tracker"] then
            SetPedComponentVariation(ped, 7, 13, 0, 0)
        else
            SetPedComponentVariation(ped, 7, data["accessory"].item, data["accessory"].texture, 0)
        end
    else
        if QBCore.Functions.GetPlayerData().metadata["tracker"] then
            SetPedComponentVariation(ped, 7, 13, 0, 0)
        else
            SetPedComponentVariation(ped, 7, -1, 0, 2)
        end
    end

    -- Mask
    if data["mask"] ~= nil then
        SetPedComponentVariation(ped, 1, data["mask"].item, data["mask"].texture, 0)
    end

    -- Bag
    if data["bag"] ~= nil then
        SetPedComponentVariation(ped, 5, data["bag"].item, data["bag"].texture, 0)
    end

    -- Hat
    if data["hat"] ~= nil then
        if data["hat"].item ~= -1 and data["hat"].item ~= 0 then
            SetPedPropIndex(ped, 0, data["hat"].item, data["hat"].texture, true)
        else
            ClearPedProp(ped, 0)
        end
    end

    -- Glass
    if data["glass"] ~= nil then
        if data["glass"].item ~= -1 and data["glass"].item ~= 0 then
            SetPedPropIndex(ped, 1, data["glass"].item, data["glass"].texture, true)
        else
            ClearPedProp(ped, 1)
        end
    end

    -- Ear
    if data["ear"] ~= nil then
        if data["ear"].item ~= -1 and data["ear"].item ~= 0 then
            SetPedPropIndex(ped, 2, data["ear"].item, data["ear"].texture, true)
        else
            ClearPedProp(ped, 2)
        end
    end
	TriggerEvent("qb-clothes:pickWorkOutfitApp", oData.vData)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerData.job = JobInfo
    PlayerJob = JobInfo
end)

local function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

Citizen.CreateThread(function()
    for k, v in pairs (Config.Stores) do
        if Config.Stores[k].shopType == "clothing" then
            local clothingShop = AddBlipForCoord(Config.Stores[k].coords)
            SetBlipSprite(clothingShop, 73)
            SetBlipColour(clothingShop, 47)
            SetBlipScale  (clothingShop, 0.7)
            SetBlipAsShortRange(clothingShop, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("Clothing store")
            EndTextCommandSetBlipName(clothingShop)
        end

        if Config.Stores[k].shopType == "barber" then
            local barberShop = AddBlipForCoord(Config.Stores[k].coords)
            SetBlipSprite(barberShop, 71)
            SetBlipColour(barberShop, 0)
            SetBlipScale  (barberShop, 0.7)
            SetBlipAsShortRange(barberShop, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("Barber")
            EndTextCommandSetBlipName(barberShop)
        end
    end
end)

CreateThread(function()

    local zones = {}
    for k, v in pairs(Config.Stores) do
        zones[#zones+1] = BoxZone:Create(
            v.coords, v.length, v.width, {
            name = v.shopType,
            debugPoly = false,
        })
    end

    local clothingCombo = ComboZone:Create(zones, {name = "clothingCombo", debugPoly = false})
    clothingCombo:onPlayerInOut(function(isPointInside, point, zone)
        if isPointInside then
            inZone = true
            zoneName = zone.name
            if zoneName == 'clothing' then
                exports['qb-core']:DrawText('[E] - Klädäffär', 'left')
            elseif zoneName == 'barber' then
                exports['qb-core']:DrawText('[E] - Frisör', 'left')
            end
        else
            inZone = false
            exports['qb-core']:HideText()
        end
    end)

    local roomZones = {}
    for k, v in pairs(Config.ClothingRooms) do
        roomZones[#roomZones+1] = BoxZone:Create(
            v.coords, v.length, v.width, {
            name = 'ClothingRooms_' .. k,
            debugPoly = false,
        })
    end

    local clothingRoomsCombo = ComboZone:Create(roomZones, {name = "clothingRoomsCombo", debugPoly = false})
    clothingRoomsCombo:onPlayerInOut(function(isPointInside, point, zone)
        if isPointInside then
            zoneName = zone.name
            if (PlayerData.job.name == Config.ClothingRooms[tonumber(string.sub(zone.name, 15))].requiredJob) then
                inZone = true
                exports['qb-core']:DrawText('[E] - Omklädningsrum', 'left')
            end
        else
            inZone = false
            exports['qb-core']:HideText()
        end
    end)
end)

-- Clothing Thread
CreateThread(function ()
    Wait(1000)
    while true do
        local sleep = 1000
        if inZone then
            sleep = 5
            if string.find(zoneName, 'ClothingRooms_') then
                if IsControlJustReleased(0, 38) then
                    gender = "male"
                    if QBCore.Functions.GetPlayerData().charinfo.gender == 1 then gender = "female" end
                    TriggerEvent("qb-clothing:client:openWorkOutfits", Config.Outfits[PlayerJob.name][gender])
                end
            elseif zoneName == 'clothing' then
                if IsControlJustReleased(0, 38) then
                    TriggerEvent("fivem-appearance:clothingShop")
                end
            elseif zoneName == 'barber' then
                if IsControlJustReleased(0, 38) then
                    TriggerEvent("fivem-appearance:barberMenu")
                end
            end
        else
            sleep = 1000
        end
        Wait(sleep)
    end
end)

-- Command(s)

RegisterCommand('reloadskin', function()
	TriggerEvent("fivem-appearance:reloadskin")
end)

RegisterNetEvent('fivem-appearance:reloadskin', function(data)
    local playerPed = PlayerPedId()
	local maxhealth = GetEntityMaxHealth(playerPed)
	local health = GetEntityHealth(playerPed)
	QBCore.Functions.TriggerCallback('fivem-appearance:getPlayerSkin', function(appearance)
		exports['fivem-appearance']:setPlayerAppearance(appearance)
        Wait(1000) -- Wait is needed to clothing menu dosent overwrite the tattoos
			TriggerServerEvent('Select:Tattoos')
	end)
	for k, v in pairs(GetGamePool('CObject')) do
        if IsEntityAttachedToEntity(PlayerPedId(), v) then
            SetEntityAsMissionEntity(v, true, true)
            DeleteObject(v)
            DeleteEntity(v)
        end
		SetPedMaxHealth(PlayerId(), maxhealth)
		Citizen.Wait(1000) -- Safety Delay
		SetEntityHealth(PlayerPedId(), health)
    end
end)



-- Testing Command

RegisterCommand('clothingmenu', function()
	local config = {
		ped = true,
		headBlend = true,
		faceFeatures = true,
		headOverlays = true,
		components = true,
		props = true,
	}
	exports['fivem-appearance']:startPlayerCustomization(function (appearance)
		if (appearance) then
			TriggerServerEvent('fivem-appearance:save', appearance)
			print('Player Clothing Saved')
			Wait(1000) -- Wait is needed to clothing menu dosent overwrite the tattoos
			TriggerServerEvent('Select:Tattoos')
		else
			print('Canceled')
			Wait(1000) -- Wait is needed to clothing menu dosent overwrite the tattoos
			TriggerServerEvent('Select:Tattoos')
		end
	end, config)
end, false)
