Config = {}

Config.DrawDistance = 10.0
Config.MarkerSize   = {x = 7.0, y = 7.0, z = 1.0}

Config.Money = 0 -- How much it takes from you when you open the clothing menu
Config.Debug = false

Config.Stores = {
    [1] = {shopType = 'clothing', coords = vector3(1693.32, 4823.48, 41.06), width = 2, length = 2},
    [2] = {shopType = 'clothing', coords = vector3(-712.215881, -155.352982, 37.4151268), width = 2, length = 2},
    [3] = {shopType = 'clothing', coords = vector3(-1192.94495, -772.688965, 17.3255997), width = 2, length = 2},
    [4] = {shopType = 'clothing', coords = vector3(425.236, -806.008, 28.491), width = 2, length = 2},
    [5] = {shopType = 'clothing', coords = vector3(-162.658, -303.397, 38.733), width = 2, length = 2},
    [6] = {shopType = 'clothing', coords = vector3(75.950, -1392.891, 28.376), width = 2, length = 2},
    [7] = {shopType = 'clothing', coords = vector3(-822.194, -1074.134, 10.328), width = 2, length = 2},
    [8] = {shopType = 'clothing', coords = vector3(-1450.711, -236.83, 48.809), width = 2, length = 2},
    [9] = {shopType = 'clothing', coords = vector3(4.254, 6512.813, 30.877), width = 2, length = 2},
    [10] = {shopType = 'clothing', coords = vector3(615.180, 2762.933, 41.088), width = 2, length = 2},
    [11] = {shopType = 'clothing', coords = vector3(1196.785, 2709.558, 37.222), width = 2, length = 2},
    [12] = {shopType = 'clothing', coords = vector3(-3171.453, 1043.857, 19.863), width = 2, length = 2},
    [13] = {shopType = 'clothing', coords = vector3(-1100.959, 2710.211, 18.107), width = 2, length = 2},
    [14] = {shopType = 'clothing', coords = vector3(-1207.65, -1456.88, 4.3784737586975), width = 2, length = 2},
    [15] = {shopType = 'clothing', coords = vector3(121.76, -224.6, 53.56), width = 2, length = 2},
    [16] = {shopType = 'barber', coords = vector3(-814.3, -183.8, 36.6), width = 2, length = 2},
    [17] = {shopType = 'barber', coords = vector3(136.8, -1708.4, 28.3), width = 2, length = 2},
    [18] = {shopType = 'barber', coords = vector3(-1282.6, -1116.8, 6.0), width = 2, length = 2},
    [19] = {shopType = 'barber', coords = vector3(1931.5, 3729.7, 31.8), width = 2, length = 2},
    [20] = {shopType = 'barber', coords = vector3(1212.8, -472.9, 65.2), width = 2, length = 2},
    [21] = {shopType = 'barber', coords = vector3(-32.9, -152.3, 56.1), width = 2, length = 2},
    [22] = {shopType = 'barber', coords = vector3(-278.1, 6228.5, 30.7), width = 2, length = 2}
}

Config.ClothingRooms = {
    [1] = {requiredJob = "police", isGang = false, coords = vector3(463.43, -999.07, 30.69), width = 2, length = 2},
    [2] = {requiredJob = "ambulance", isGang = false, coords = vector3(300.82, -597.18, 43.28), width = 2, length = 2},
    [3] = {requiredJob = "police", isGang = false, coords = vector3(314.76, 671.78, 14.73), width = 2, length = 2},
    [4] = {requiredJob = "ambulance", isGang = false, coords = vector3(338.70, 659.61, 14.71), width = 2, length = 2},    
    [5] = {requiredJob = "ambulance", isGang = false, coords = vector3(-1098.45, 1751.71, 23.35), width = 2, length = 2},    
    [6] = {requiredJob = "police", isGang = false, coords = vector3(-77.59, -129.17, 5.03), width = 2, length = 2},
    [7] = {requiredJob = "mechanic", isGang = false, coords = vector3(956.78, -966.34, 39.51), width = 2, length = 2},
}

Config.Outfits = {
    ["police"] = {
        ["male"] = {
            [1] = {
                outfitLabel = "Kort Armat",
                outfitData = {
                    ["pants"]       = { item = 17, texture = 0},  -- Broek
                    ["arms"]        = { item = 32, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 16, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 19, texture = 0},  -- Jas / Vesten
                    ["shoes"]       = { item = 26, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = -1, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = -1, texture = 0},  -- Tas
                    ["hat"]         = { item = -1, texture = 0},  -- Pet
                    --["glass"]       = { item = -1, texture = 0},  -- Bril
                    --["ear"]         = { item = -1, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 122, texture = 0},  -- Masker
                },
            },
            [2] = {
                outfitLabel = "Lång Armad",
                outfitData = {
                    ["pants"]       = { item = 17, texture = 0},  -- Broek
                    ["arms"]        = { item = 31, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 16, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 20, texture = 0},  -- Jas / Vesten
                    ["shoes"]       = { item = 26, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = -1, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = -1, texture = 0},  -- Tas
                    ["hat"]         = { item = -1, texture = 0},  -- Pet
                    --["glass"]       = { item = -1, texture = 0},  -- Bril
                    --["ear"]         = { item = -1, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 122, texture = 0},  -- Masker
                },
            },
            [3] = {
                outfitLabel = "MC Kläder",
                outfitData = {
                    ["pants"]       = { item = 17, texture = 1},  -- Broek
                    ["arms"]        = { item = 32, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 18, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 16, texture = 0},  -- Jas / Vesten
                    ["shoes"]       = { item = 26, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = -1, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = -1, texture = 0},  -- Tas
                    ["hat"]         = { item = -1, texture = 0},  -- Pet
                    --["glass"]       = { item = -1, texture = 0},  -- Bril
                    --["ear"]         = { item = -1, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 122, texture = 0},  -- Masker
                },
            },
            [4] = {
                outfitLabel = "Trafikväst",
                outfitData = {
                    --["pants"]       = { item = 36, texture = 1},  -- Broek
                    --["arms"]        = { item = 27, texture = 0},  -- Armen
                    --["t-shirt"]     = { item = 1, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 15, texture = 0},  -- Body Vest
                    --["torso2"]      = { item = 145, texture = 6},  -- Jas / Vesten
                    --["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    --["accessory"]   = { item = -1, texture = 0},  -- Nek / Das
                    --["bag"]         = { item = -1, texture = 0},  -- Tas
                    --["hat"]         = { item = -1, texture = 0},  -- Pet
                    --["glass"]       = { item = -1, texture = 0},  -- Bril
                    --["ear"]         = { item = -1, texture = 0},  -- Oor accessoires
                    --["mask"]        = { item = 121, texture = 0},  -- Masker
                },
            },
            [5] = {
                outfitLabel = "Skyddsväst",
                outfitData = {
                    --["pants"]       = { item = 36, texture = 1},  -- Broek
                    --["arms"]        = { item = 27, texture = 0},  -- Armen
                    --["t-shirt"]     = { item = 1, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 16, texture = 0},  -- Body Vest
                    --["torso2"]      = { item = 145, texture = 6},  -- Jas / Vesten
                    --["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    --["accessory"]   = { item = -1, texture = 0},  -- Nek / Das
                    --["bag"]         = { item = -1, texture = 0},  -- Tas
                    --["hat"]         = { item = -1, texture = 0},  -- Pet
                    --["glass"]       = { item = -1, texture = 0},  -- Bril
                    --["ear"]         = { item = -1, texture = 0},  -- Oor accessoires
                    --["mask"]        = { item = 121, texture = 0},  -- Masker
                },
            },
            [6] = {
                outfitLabel = "MC-väst",
                outfitData = {
                    --["pants"]       = { item = 36, texture = 1},  -- Broek
                    --["arms"]        = { item = 27, texture = 0},  -- Armen
                    --["t-shirt"]     = { item = 1, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 14, texture = 0},  -- Body Vest
                    --["torso2"]      = { item = 145, texture = 6},  -- Jas / Vesten
                    --["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    --["accessory"]   = { item = -1, texture = 0},  -- Nek / Das
                    --["bag"]         = { item = -1, texture = 0},  -- Tas
                    --["hat"]         = { item = -1, texture = 0},  -- Pet
                    --["glass"]       = { item = -1, texture = 0},  -- Bril
                    --["ear"]         = { item = -1, texture = 0},  -- Oor accessoires
                    --["mask"]        = { item = 121, texture = 0},  -- Masker
                },
            },
        },
        ["female"] = {
            [1] = {
                outfitLabel = "Kort Armat",
                outfitData = {
                    ["pants"]       = { item = 16, texture = 0},  -- Broek
                    ["arms"]        = { item = 32, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 19, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 21, texture = 0},  -- Jas / Vesten
                    ["shoes"]       = { item = 28, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = -1, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = -1, texture = 0},  -- Tas
                    ["hat"]         = { item = -1, texture = 0},  -- Pet
                    --["glass"]       = { item = -1, texture = 0},  -- Bril
                    --["ear"]         = { item = -1, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 123, texture = 0},  -- Masker
                },
            },
            [2] = {
                outfitLabel = "Lång Armad",
                outfitData = {
                    ["pants"]       = { item = 16, texture = 0},  -- Broek
                    ["arms"]        = { item = 28, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 19, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 22, texture = 0},  -- Jas / Vesten
                    ["shoes"]       = { item = 28, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = -1, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = -1, texture = 0},  -- Tas
                    ["hat"]         = { item = -1, texture = 0},  -- Pet
                    --["glass"]       = { item = -1, texture = 0},  -- Bril
                    --["ear"]         = { item = -1, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 123, texture = 0},  -- Masker
                },
            },
            [3] = {
                outfitLabel = "MC Kläder",
                outfitData = {
                    ["pants"]       = { item = 16, texture = 1},  -- Broek
                    ["arms"]        = { item = 32, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 19, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 20, texture = 0},  -- Jas / Vesten
                    ["shoes"]       = { item = 28, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    ["accessory"]   = { item = -1, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = -1, texture = 0},  -- Tas
                    ["hat"]         = { item = -1, texture = 0},  -- Pet
                    --["glass"]       = { item = -1, texture = 0},  -- Bril
                    --["ear"]         = { item = -1, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 123, texture = 0},  -- Masker
                },
            },
            [4] = {
                outfitLabel = "Trafikväst",
                outfitData = {
                    --["pants"]       = { item = 36, texture = 1},  -- Broek
                    --["arms"]        = { item = 27, texture = 0},  -- Armen
                    --["t-shirt"]     = { item = 1, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 14, texture = 0},  -- Body Vest
                    --["torso2"]      = { item = 145, texture = 6},  -- Jas / Vesten
                    --["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    --["accessory"]   = { item = -1, texture = 0},  -- Nek / Das
                    --["bag"]         = { item = -1, texture = 0},  -- Tas
                    --["hat"]         = { item = -1, texture = 0},  -- Pet
                    --["glass"]       = { item = -1, texture = 0},  -- Bril
                    --["ear"]         = { item = -1, texture = 0},  -- Oor accessoires
                    --["mask"]        = { item = 121, texture = 0},  -- Masker
                },
            },
            [5] = {
                outfitLabel = "Skyddsväst",
                outfitData = {
                    --["pants"]       = { item = 36, texture = 1},  -- Broek
                    --["arms"]        = { item = 27, texture = 0},  -- Armen
                    --["t-shirt"]     = { item = 1, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 13, texture = 0},  -- Body Vest
                    --["torso2"]      = { item = 145, texture = 6},  -- Jas / Vesten
                    --["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    --["accessory"]   = { item = -1, texture = 0},  -- Nek / Das
                    --["bag"]         = { item = -1, texture = 0},  -- Tas
                    --["hat"]         = { item = -1, texture = 0},  -- Pet
                    --["glass"]       = { item = -1, texture = 0},  -- Bril
                    --["ear"]         = { item = -1, texture = 0},  -- Oor accessoires
                    --["mask"]        = { item = 121, texture = 0},  -- Masker
                },
            },
            [6] = {
                outfitLabel = "MC-väst",
                outfitData = {
                    --["pants"]       = { item = 36, texture = 1},  -- Broek
                    --["arms"]        = { item = 27, texture = 0},  -- Armen
                    --["t-shirt"]     = { item = 1, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 9, texture = 0},  -- Body Vest
                    --["torso2"]      = { item = 145, texture = 6},  -- Jas / Vesten
                    --["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    --["accessory"]   = { item = -1, texture = 0},  -- Nek / Das
                    --["bag"]         = { item = -1, texture = 0},  -- Tas
                    --["hat"]         = { item = -1, texture = 0},  -- Pet
                    --["glass"]       = { item = -1, texture = 0},  -- Bril
                    --["ear"]         = { item = -1, texture = 0},  -- Oor accessoires
                    --["mask"]        = { item = 121, texture = 0},  -- Masker
                },
            },
            [7] = {
                outfitLabel = "MC-väst 2",
                outfitData = {
                    --["pants"]       = { item = 36, texture = 1},  -- Broek
                    --["arms"]        = { item = 27, texture = 0},  -- Armen
                    --["t-shirt"]     = { item = 1, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 13, texture = 2},  -- Body Vest
                    --["torso2"]      = { item = 145, texture = 6},  -- Jas / Vesten
                    --["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    --["accessory"]   = { item = -1, texture = 0},  -- Nek / Das
                    --["bag"]         = { item = -1, texture = 0},  -- Tas
                    --["hat"]         = { item = -1, texture = 0},  -- Pet
                    --["glass"]       = { item = -1, texture = 0},  -- Bril
                    --["ear"]         = { item = -1, texture = 0},  -- Oor accessoires
                    --["mask"]        = { item = 121, texture = 0},  -- Masker
                },
            },
            [8] = {
                outfitLabel = "Poliskeps",
                outfitData = {
                    --["pants"]       = { item = 36, texture = 1},  -- Broek
                    --["arms"]        = { item = 27, texture = 0},  -- Armen
                    --["t-shirt"]     = { item = 1, texture = 0},  -- T Shirt
                    --["vest"]        = { item = 13, texture = 2},  -- Body Vest
                    --["torso2"]      = { item = 145, texture = 6},  -- Jas / Vesten
                    --["shoes"]       = { item = 25, texture = 0},  -- Schoenen
                    -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                    --["accessory"]   = { item = -1, texture = 0},  -- Nek / Das
                    --["bag"]         = { item = -1, texture = 0},  -- Tas
                    ["hat"]         = { item = 20, texture = 3},  -- Pet
                    --["glass"]       = { item = -1, texture = 0},  -- Bril
                    --["ear"]         = { item = -1, texture = 0},  -- Oor accessoires
                    --["mask"]        = { item = 121, texture = 0},  -- Masker
                },
            },
        }
    },
    ["ambulance"] = {
        ["male"] = {
            [1] = {
                outfitLabel = "Sjukvårdarkläder",
                outfitData = {
                    ["pants"]       = { item = 18,texture = 0},  -- Broek
                    ["arms"]        = { item = 85, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 22, texture = 0},  -- Jas / Vesten
                    ["shoes"]       = { item = 26, texture = 0},  -- Schoenen
                    ["decals"]      = { item = -1, texture = 0},  -- Decals
                    ["accessory"]   = { item = 127, texture = 0},  -- Nek / Das
                    ["bag"]         = { item = -1, texture = 0},  -- Tas
                    ["hat"]         = { item = -1, texture = -1},  -- Pet
                    --["glass"]       = { item = -1, texture = 0},  -- Bril
                    --["ear"]         = { item = -1, texture = 0},  -- Oor accessoires
                    ["mask"]        = { item = 122, texture = 0},  -- Masker
                },
            },
        },
            ["female"] = {
                [1] = {
                    outfitLabel = "Sjukvårdarkläder",
                    outfitData = {
                        ["pants"]       = { item = 17, texture = 0},  -- PANTS
                        ["arms"]        = { item = 99, texture = 0},  -- ArmS
                        ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                        ["vest"]        = { item = 0, texture = 0},  -- VEST
                        ["torso2"]      = { item = 33, texture = 0},  -- JACKET
                        ["shoes"]       = { item = 28, texture = 0},  -- SHOES
                        -- ["decals"]      = { item = 0, texture = 0},  -- Decals
                        ["accessory"]   = { item = 106, texture = 0},  -- Neck
                        ["bag"]         = { item = 0, texture = 0},  -- BAG
                        ["hat"]         = { item = -1, texture = -0},  -- HAT
                --      ["glass"]       = { item = 5, texture = 0},  -- GLASSES
                        --["ear"]         = { item = -1, texture = 0},  -- EAR accessoires
                        ["mask"]        = { item = 123, texture = 0},  -- MASK
                },
            },
        }
    },
    ["mechanic"] = {
        ["male"] = {
            [1] = {
                outfitLabel = "Arbetskläder",
                outfitData = {
                    ["pants"]       = { item = 38,texture = 1},  -- Broek
                    ["arms"]        = { item = 1, texture = 0},  -- Armen
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 65, texture = 1},  -- Jas / Vesten
                    ["shoes"]       = { item = 97, texture = 0},  -- Schoenen
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    --["accessory"]   = { item = -1, texture = 0},  -- Nek / Das
                    --["bag"]         = { item = -1, texture = 0},  -- Tas
                    --["hat"]         = { item = -1, texture = 0},  -- Pet
                    --["glass"]       = { item = -1, texture = 0},  -- Bril
                    --["ear"]         = { item = -1, texture = 0},  -- Oor accessoires
                    --["mask"]        = { item = -1, texture = 0},  -- Masker
				},
			},		
		},		
        ["female"] = {
            [1] = {
                outfitLabel = "Arbetskläder",
                outfitData = {
                    ["pants"]       = { item = 38, texture = 1},  -- PANTS
                    ["arms"]        = { item = 2, texture = 0},  -- ArmS
                    ["t-shirt"]     = { item = 2, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- VEST
                    ["torso2"]      = { item = 59, texture = 1},  -- JACKET
                    ["shoes"]       = { item = 102, texture = 0},  -- SHOES
                    ["decals"]      = { item = 0, texture = 0},  -- Decals
                    --["accessory"]   = { item = -1, texture = 0},  -- Neck
                    --["bag"]         = { item = -1, texture = 0},  -- BAG
                    --["hat"]         = { item = -1, texture = -0},  -- HAT
                    --["glass"]       = { item = 5, texture = 0},  -- GLASSES
                    --["ear"]         = { item = -1, texture = 0},  -- EAR accessoires
                    --["mask"]        = { item = -1, texture = 0},  -- MASK
				},
            },
        },
    },
}
