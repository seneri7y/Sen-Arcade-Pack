--Sen's Arcade Pack 0.0.1


-- Colors
local accentRed = Vector4f():setValues(0.385, 0.078, 0.078, 1.0)


registerMod = function()
    return {
        title = "Sen's Arcade Pack",
        description = "This mod adds a variety of new features, worldgens, and more!",
        priority = 1,
    }
end

registerWorldTypes = function()

    ------------------------------
    --          Turbo           --          
    ------------------------------

    ContentRegistry.registerWorldType("Turbo", {
        tinyPlanets = false,
        sunSoundID = "sounds/ambient/sunCustom.ogg",
        planetRings = {
            easy = {
                {
                    planetTypeID = "p_turDesert",
                    numberOfPlanets = 4
                },
                {
                    planetTypeID = "p_turNormal",
                    numberOfPlanets = 2
                },
                {
                    planetTypeID = "p_turNormal",
                    numberOfPlanets = 4
                },
                {
                    planetTypeID = "p_turIce",
                    numberOfPlanets = 2
                },
                {
                    planetTypeID = "p_turIce",
                    numberOfPlanets = 2
                },
                {
                    planetTypeID = "p_turGas",
                    numberOfPlanets = 2
                },
            },
            normal = {
                {
                    planetTypeID = "p_turDesert",
                    numberOfPlanets = 3
                },
                {
                    planetTypeID = "p_turDesert",
                    numberOfPlanets = 1
                },
                {
                    planetTypeID = "p_turNormal",
                    numberOfPlanets = 4
                },
                {
                    planetTypeID = "p_turIce",
                    numberOfPlanets = 1
                },
                {
                    planetTypeID = "p_turIce",
                    numberOfPlanets = 2
                },
                {
                    planetTypeID = "p_turGas",
                    numberOfPlanets = 2
                },
            },
            hard = {
                {
                    planetTypeID = "p_turDesert",
                    numberOfPlanets = 2
                },
                {
                    planetTypeID = "p_turDesert",
                    numberOfPlanets = 1
                },
                {
                    planetTypeID = "p_turNormal",
                    numberOfPlanets = 4
                },
                {
                    planetTypeID = "p_turIce",
                    numberOfPlanets = 1
                },
                {
                    planetTypeID = "p_turIce",
                    numberOfPlanets = 1
                },
                {
                    planetTypeID = "p_turGas",
                    numberOfPlanets = 1
                },
            }
        }
    })

    -------------------------------
    --          MADness          --
    -------------------------------

    ContentRegistry.registerWorldType("MADness System", {
        tinyPlanets = false,
        sunSoundID = "sounds/ambient/sunCustom.ogg",
        planetRings = {
            easy = {
                {
                    planetTypeID = "p_madnessplanet",
                    numberOfPlanets = 4
                },
                {
                    planetTypeID = "p_madnessplanet",
                    numberOfPlanets = 4
                }
            },
            normal = {
                {
                    planetTypeID = "p_madnessplanet",
                    numberOfPlanets = 4
                },
                {
                    planetTypeID = "p_madnessplanet",
                    numberOfPlanets = 4
                }
            },
            hard = {
                {
                    planetTypeID = "p_madnessplanet",
                    numberOfPlanets = 4
                }
            }
        }
    })
end

registerItems = function()

    -------------------------------
    --          MADness          --
    -------------------------------

    ContentRegistry.registerItem("i_mad_blood", "i_mad_blood.png", 100, ITEM_CATEGORY_CONSUMABLES, 1, 10, false, "Blood")
    -- ('key', 'image.png', gui sequence number, ITEM_CATEGORY_<CONSTRUCTION_MATERIALS, CONSUMABLES,INTERMEDIATES, RAW_MATERIALS, AGRICULTURE PRODUCTS>, tier, sellprice, constructionmatmat, 'displayname')
end

registerCultivationModes = function()

    -------------------------------
    --          MADness          --
    -------------------------------

    ContentRegistry.registerCultivationMode("cm_MAD_LAND", {
        langKey = "MADness Tile", 
        iconStyle = {
            color = accentRed,
            textureID = "textures/gui/guiIcons.aexta",
            textureLayer = 122,
            lighting = true,
        },
    })

    ContentRegistry.registerCultivationMode("cm_MAD_COAST", {
        langKey = "MADness Coast", 
        iconStyle = {
            color = accentRed,
            textureID = "textures/gui/guiIcons.aexta",
            textureLayer = 122,
            lighting = true,
        },
    })

    ContentRegistry.registerCultivationMode("cm_MAD_OCEAN", {
        langKey = "MADness Ocean", 
        iconStyle = {
            color = accentRed,
            textureID = "textures/gui/guiIcons.aexta",
            textureLayer = 122,
            lighting = true,
        },
    })
end

registerPopulationTypes = function()

    -------------------------------
    --          MADness          --
    -------------------------------

	ContentRegistry.registerPopulationType("p_mad_Society", {
        tier = 1,
        civilizationType = CIVILIZATION_TYPE_COMMON,
        iconID = "textures/buildingIcons/mad_societyIcon.png",
        langKey = "MAD Society",
        minResidents = 1,
        maxResidents = 100,
        economicScore = 0.5,
        needs = {
            {
                type = NEED_TYPE_ITEM,
                itemTypeID = "i_oil",
                residentGain = 20,
                moneyPR = 10,
                researchPointsPRScience = 0.5,
                researchPointsPRMilitary = 0.5,
                consumptionRatePR = 0.00075,
            },
            {
                type = NEED_TYPE_ITEM,
                itemTypeID = "i_mad_blood",
                residentGain = 25,
                moneyPR = 15,
                researchPointsPRScience = 0.75,
                researchPointsPRMilitary = 0.75,
                consumptionRatePR = 0.000375,
            },
            {
                type = NEED_TYPE_BUILDING,
                buildingID = "b_mad_propagandaSpeakers",
                residentGain = 40,
                moneyPR = 25,
                researchPointsPRScience = 1.2,
                researchPointsPRMilitary = 1.2,
            },
            {
                type = NEED_TYPE_POWER,
                powerConsumption = 14,
                residentGain = 1,
                moneyPR = 5,
                researchPointsPRScience = 0.1,
                researchPointsPRMilitary = 0.1,
            }
        }
    })
end

registerAmbientObjects = function()
	
end

registerResources = function()
	
end

registerPlanetTypes = function()

    ------------------------------
    --          Turbo           --          
    ------------------------------

    ContentRegistry.registerPlanetType("p_turNormal", {
        iconID = "textures/gui/planetNormalIcon.png",
        farmProductivity = 4.0,
        sandColor = Vector3f():setValues(0.855, 0.8, 0.482),
        mountainTextureID = "textures/planets/planetMountainNormalMap.png",
        heightTransitions = Vector2f():setValues(-0.15, 0.15),
        biomes = {
            {
                biomeID = "normal_grassland",
                color = Vector3f():setValues(0.0, 0.903545, 0.0),
                soundID = "sounds/ambient/grassland.ogg",
                weight = 15,
            },
            {
                biomeID = "normal_forest",
                color = Vector3f():setValues(0.0, 0.659353, 0.0),
                soundID = "sounds/ambient/forest.ogg",
                weight = 9,
            },
            {
                biomeID = "normal_birchForest",
                color = Vector3f():setValues(0.2, 0.609353, 0.2),
                soundID = "sounds/ambient/forest.ogg",
                weight = 5,
            },
        },
        resources = {
            {
                resourceID = "r_oil",
                biomes = {
                    {
                        biomeID = "normal_birchForest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 4.0,
                    },
                },
            },
            {
                resourceID = "r_iron",
                biomes = {
                    {
                        biomeID = "normal_forest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 4.0,
                        maxGenerationDensity = 8.0,
                    },
                    {
                        biomeID = "normal_birchForest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 4.0,
                        maxGenerationDensity = 6.0,
                    },
                },
            },
            {
                resourceID = "r_limestone",
                biomes = {
                    {
                        biomeID = "normal_grassland",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 6.0,
                        maxGenerationDensity = 12.0,
                    },
                },
            },
            {
                resourceID = "r_clay",
                biomes = {
                    {
                        biomeID = "normal_forest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 4.0,
                        maxGenerationDensity = 8.0,
                    },
                    {
                        biomeID = "normal_birchForest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 4.0,
                        maxGenerationDensity = 8.0,
                    },
                },
            },
            {
                resourceID = "r_coal",
                biomes = {
                    {
                        biomeID = "normal_forest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 4.0,
                        maxGenerationDensity = 8.0,
                    },
                    {
                        biomeID = "normal_birchForest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 4.0,
                        maxGenerationDensity = 8.0,
                    },
                },
            },
        },
        ambientObjects = {
            {
                ambientObjectTypeID = "ao_bush",
                biomes = {
                    {
                        biomeID = "normal_birchForest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 1.2,
                        variants = { 0 }
                    },
                    {
                        biomeID = "normal_grassland",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 1.2,
                        variants = { 0 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_flower",
                biomes = {
                    {
                        biomeID = "normal_grassland",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 1.5,
                        variants = { 0, 1 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_oak",
                biomes = {
                    {
                        biomeID = "normal_forest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 2.0,
                        maxGenerationDensity = 8.0,
                        variants = { 0, 1, 2 }
                    },
                    {
                        biomeID = "normal_birchForest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 1.0,
                        maxGenerationDensity = 1.5,
                        variants = { 0, 1, 2 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_pine",
                biomes = {
                    {
                        biomeID = "normal_forest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 2.0,
                        maxGenerationDensity = 8.0,
                        variants = { 0, 1 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_birch",
                biomes = {
                    {
                        biomeID = "normal_birchForest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 2.0,
                        maxGenerationDensity = 8.0,
                        variants = { 0, 1 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_log",
                biomes = {
                    {
                        biomeID = "normal_forest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 1.0,
                        maxGenerationDensity = 1.2,
                        variants = { 0, 1 }
                    },
                    {
                        biomeID = "normal_birchForest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 1.0,
                        maxGenerationDensity = 1.3,
                        variants = { 0, 1 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_rock",
                biomes = {
                    {
                        biomeID = "normal_forest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 1.2,
                        variants = { 0, 1, 2, 3, 4, 5 }
                    },
                    {
                        biomeID = "normal_birchForest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 1.2,
                        variants = { 0, 1, 2, 3, 4, 5 }
                    },
                    {
                        biomeID = "normal_grassland",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 1.1,
                        variants = { 0, 1, 2, 3, 4, 5 }
                    },
                },
            },
        },
        cultivationModes = {
            CULTIVATION_MODE_OCEAN,
            CULTIVATION_MODE_COAST,
            CULTIVATION_MODE_LAND,
            CULTIVATION_MODE_MOUNTAIN,
        },
    })

    ContentRegistry.registerPlanetType("p_turDesert", {
        iconID = "textures/gui/planetDesertIcon.png",
        farmProductivity = 2,
        sandColor = Vector3f():setValues(0.855, 0.8, 0.482),
        mountainTextureID = "textures/planets/planetMountainDesertMap.png",
        heightTransitions = Vector2f():setValues(-0.15, 0.15),
        biomes = {
            {
                biomeID = "desert_desert",
                color = Vector3f():setValues(1.0, 0.768316, 0.228863),
                soundID = "sounds/ambient/desert.ogg",
                weight = 15,
            },
            {
                biomeID = "desert_savanna",
                color = Vector3f():setValues(0.737649, 0.668272, 0.0),
                soundID = "sounds/ambient/savanna.ogg",
                weight = 9,
            },
        },
        resources = {
            {
                resourceID = "r_oil",
                biomes = {
                    {
                        biomeID = "desert_desert",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 8.0,
                        maxGenerationDensity = 16.0,
                    },
                },
            },
            {
                resourceID = "r_cobalt",
                biomes = {
                    {
                        biomeID = "desert_savanna",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 2.0,
                        maxGenerationDensity = 6.0,
                    },
                },
            },
            {
                resourceID = "r_copper",
                biomes = {
                    {
                        biomeID = "desert_desert",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 6.0,
                        maxGenerationDensity = 12.0,
                    },
                },
            },
            {
                resourceID = "r_uranium",
                biomes = {
                    {
                        biomeID = "desert_desert",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 2.0,
                        maxGenerationDensity = 4.0,
                    },
                },
            },
            {
                resourceID = "r_limestone",
                biomes = {
                    {
                        biomeID = "desert_desert",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 6.0,
                    },
                },
            },
            {
                resourceID = "r_clay",
                biomes = {
                    {
                        biomeID = "desert_savanna",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 4.0,
                        maxGenerationDensity = 8.0,
                    },
                },
            },
        },
        ambientObjects = {
            {
                ambientObjectTypeID = "ao_acacia",
                biomes = {
                    {
                        biomeID = "desert_savanna",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 2.0,
                        variants = { 0, 1, 2, }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_cactus",
                biomes = {
                    {
                        biomeID = "desert_desert",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 1.1,
                        variants = { 0, 1, 2 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_desertRock",
                biomes = {
                    {
                        biomeID = "desert_desert",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 1.2,
                        variants = { 0, 1, 2, 3, 4, 5 }
                    },
                    {
                        biomeID = "desert_savanna",
                        cultivationMode = CULTIVATION_MODE_COAST,
                        minGenerationDensity = 0.8,
                        maxGenerationDensity = 1.3,
                        variants = { 0, 1, 2, 3, 4, 5 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_tallGrass",
                biomes = {
                    {
                        biomeID = "desert_savanna",
                        cultivationMode = CULTIVATION_MODE_COAST,
                        minGenerationDensity = 6.0,
                        maxGenerationDensity = 10.0,
                        variants = { 0, 1 }
                    },
                    {
                        biomeID = "desert_savanna",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 0.5,
                        maxGenerationDensity = 1.5,
                        variants = { 0 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_savannaBush",
                biomes = {
                    {
                        biomeID = "desert_savanna",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 1.1,
                        variants = { 0 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_rockPillar",
                biomes = {
                    {
                        biomeID = "desert_savanna",
                        cultivationMode = CULTIVATION_MODE_MOUNTAIN,
                        minGenerationDensity = 0.1,
                        maxGenerationDensity = 1.3,
                        variants = { 0, 1, 2, }
                    },
                    {
                        biomeID = "desert_desert",
                        cultivationMode = CULTIVATION_MODE_MOUNTAIN,
                        minGenerationDensity = 0.1,
                        maxGenerationDensity = 1.3,
                        variants = { 0, 1, 2, }
                    },
                },
            },
        },
        cultivationModes = {
            CULTIVATION_MODE_OCEAN,
            CULTIVATION_MODE_COAST,
            CULTIVATION_MODE_LAND,
            CULTIVATION_MODE_MOUNTAIN,
        },
    })

    ContentRegistry.registerPlanetType("p_turIce", {
        iconID = "textures/gui/planetIceIcon.png",
        farmProductivity = 2,
        sandColor = Vector3f():setValues(0.55, 0.6, 0.782),
        mountainTextureID = "textures/planets/planetMountainIceMap.png",
        heightTransitions = Vector2f():setValues(-0.15, 0.15),
        biomes = {
            {
                biomeID = "ice_iceDesert",
                color = Vector3f():setValue(1.0),
                soundID = "sounds/ambient/ice.ogg",
                weight = 15,
            },
            {
                biomeID = "ice_iceForest",
                color = Vector3f():setValue(1.0),
                soundID = "sounds/ambient/ice.ogg",
                weight = 7,
            },
        },
        resources = {
            {
                resourceID = "r_iron",
                biomes = {
                    {
                        biomeID = "ice_iceDesert",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 4.0,
                        maxGenerationDensity = 12.0,
                    },
                },
            },
            {
                resourceID = "r_nickel",
                biomes = {
                    {
                        biomeID = "ice_iceForest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 6.0,
                        maxGenerationDensity = 12.0,
                    },
                },
            },
            {
                resourceID = "r_copper",
                biomes = {
                    {
                        biomeID = "ice_iceForest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 4.0,
                        maxGenerationDensity = 12.0,
                    },
                },
            },
            {
                resourceID = "r_titanium",
                biomes = {
                    {
                        biomeID = "ice_iceDesert",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 4.0,
                        maxGenerationDensity = 8.0,
                    },
                },
            },
            {
                resourceID = "r_coal",
                biomes = {
                    {
                        biomeID = "ice_iceForest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 4.0,
                        maxGenerationDensity = 8.0,
                    },
                },
            },
        },
        ambientObjects = {
            {
                ambientObjectTypeID = "ao_snowyRock",
                biomes = {
                    {
                        biomeID = "ice_iceDesert",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 1.2,
                        variants = { 0, 1, 2, 3, 4, 5 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_ice",
                biomes = {
                    {
                        biomeID = "ice_iceDesert",
                        cultivationMode = CULTIVATION_MODE_COAST,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 1.5,
                        variants = { 0, 1 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_icePillar",
                biomes = {
                    {
                        biomeID = "ice_iceDesert",
                        cultivationMode = CULTIVATION_MODE_OCEAN,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 1.35,
                        variants = { 0, 1, 2 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_snowyBush",
                biomes = {
                    {
                        biomeID = "ice_iceDesert",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 1.1,
                        variants = { 0 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_deadPine",
                biomes = {
                    {
                        biomeID = "ice_iceForest",
                        cultivationMode = CULTIVATION_MODE_MOUNTAIN,
                        minGenerationDensity = 1.0,
                        maxGenerationDensity = 1.2,
                        variants = { 0, 1 }
                    },
                    {
                        biomeID = "ice_iceDesert",
                        cultivationMode = CULTIVATION_MODE_MOUNTAIN,
                        minGenerationDensity = 1.0,
                        maxGenerationDensity = 1.05,
                        variants = { 0, 1 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_snowyPine",
                biomes = {
                    {
                        biomeID = "ice_iceForest",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 6.0,
                        maxGenerationDensity = 10.0,
                        variants = { 0, 1 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_deadOak",
                biomes = {
                    {
                        biomeID = "ice_iceDesert",
                        cultivationMode = CULTIVATION_MODE_LAND,
                        minGenerationDensity = 0.0,
                        maxGenerationDensity = 1.1,
                        variants = { 0, 1 }
                    },
                },
            },
        },
        cultivationModes = {
            CULTIVATION_MODE_OCEAN,
            CULTIVATION_MODE_COAST,
            CULTIVATION_MODE_LAND,
            CULTIVATION_MODE_MOUNTAIN,
        },
    })

    ContentRegistry.registerPlanetType("p_turGas", {
        iconID = "textures/gui/planetGasIcon.png",
        farmProductivity = 1,
        gasPlanet = true,
        sandColor = Vector3f():setValues(0.5, 0.0, 0.5),
        mountainTextureID = "textures/planets/planetMountainNormalMap.png",
        heightTransitions = Vector2f():setValues(-0.15, 0.15),
        atmosphereScatteringCoefficients = Vector3f():setValues(0.042324556, 0.292311456, 0.352412134),
        atmosphereScatteringStrength = 0.04,
        atmosphereAlphaFactor = 0.22,
        spaceportID = "b_floatingSpaceport",
        warehouseID = "b_floatingWarehouse",
        unlockConditions = {
            {
                type = UNLOCK_TYPE_POPULATION,
                populationID = "p_visionaries",
            },
            {
                type = UNLOCK_TYPE_POPULATION,
                populationID = "p_weaponEngineers",
            },
        },
        biomes = {
            {
                biomeID = "gas_gas",
                color = Vector3f():setValues(0.085, 0.207, 0.363),
                soundID = "sounds/ambient/desert.ogg",
                weight = 1,
            },
            {
                biomeID = "gas_ring0",
                color = Vector3f():setValues(0.035, 0.383, 0.363),
                soundID = "sounds/ambient/desert.ogg",
                weight = 1,
            },
            {
                biomeID = "gas_ring1",
                color = Vector3f():setValues(0.267, 0.456, 0.699),
                soundID = "sounds/ambient/desert.ogg",
                weight = 1,
            },
            {
                biomeID = "gas_ring2",
                color = Vector3f():setValues(0.063, 0.6894, 0.6534),
                soundID = "sounds/ambient/desert.ogg",
                weight = 1,
            },
        },
        resources = {},
        ambientObjects = {},
        cultivationModes = {
            CULTIVATION_MODE_GAS,
        },
    })

    -------------------------------
    --          MADness          --
    -------------------------------

    ContentRegistry.registerPlanetType("p_madnessplanet", {
        langKey = "MADness Planet",
        iconID = "textures/gui/planetDesertIcon.png",
        farmProductivity = 1.0,
        gasPlanet = false,
        emissiveWater = true,
        waveStrength = 0,
        surfaceWaterColor = Vector3f():setValues(1.25, 1., 0.05),
        deepWaterColor = Vector3f():setValues(1.0, 0.1, 0.05),
        waterSpeed = 0.5,
        opaqueWater = true,
        sandColor = Vector3f():setValues(0.6, 0.25, 0.25),
        mountainTextureID = "textures/planets/planetMountainNormalMap.png",
        heightTransitions = Vector2f():setValues(-0.15, 0.15),
        biomes = {
            {
                biomeID = "madness_biome",
                color = Vector3f():setValues(0.5, 0.15, 0.15),
                soundID = "sounds/ambient/desert.ogg",
                weight = 1,
            }
        },
        ambientObjects = {
            {
                ambientObjectTypeID = "ao_rock",
                biomes = {
                    {
                        biomeID = "madness_biome",
                        cultivationMode = "cm_MAD_LAND",
                        minGenerationDensity = 0.5,
                        maxGenerationDensity = 3.0,
                        variants = { 0, 1, 2, 3, 4, 5 }
                    },
                },
            },
            {
                ambientObjectTypeID = "ao_rockPillar",
                biomes = {
                    {
                        biomeID = "madness_biome",
                        cultivationMode = "cm_MAD_LAND",
                        minGenerationDensity = 0.5,
                        maxGenerationDensity = 3.0,
                        variants = { 0, 1, 2, }
                    },
                },
            },
        },
        resources = {
            {
                resourceID = "r_clay",
                biomes = {
                    {
                        biomeID = "madness_biome",
                        cultivationMode = "cm_MAD_LAND",
                        minGenerationDensity = 6.0,
                        maxGenerationDensity = 8.0,
                    },
                },
            },
            {
                resourceID = "r_iron",
                biomes = {
                    {
                        biomeID = "madness_biome",
                        cultivationMode = "cm_MAD_LAND",
                        minGenerationDensity = 5.0,
                        maxGenerationDensity = 6.0,
                    },
                },
            },
            {
                resourceID = "r_coal",
                biomes = {
                    {
                        biomeID = "madness_biome",
                        cultivationMode = "cm_MAD_LAND",
                        minGenerationDensity = 5.0,
                        maxGenerationDensity = 6.0,
                    },
                },
            },
            {
                resourceID = "r_oil",
                biomes = {
                    {
                        biomeID = "madness_biome",
                        cultivationMode = "cm_MAD_LAND",
                        minGenerationDensity = 2.0,
                        maxGenerationDensity = 4.0,
                    },
                },
            },

        },
        cultivationModes = {
            "cm_MAD_LAND"
        },
        determineTileCultivationModeCallback = function(bGasPlanet, averageHeight, minHeight, maxHeight, indicesCount, indicesHeights)
            -- bGasPlanet is always false, because we set "gasPlanet = false"
            local LAND_LEVEL = -0.1
            local LAND_LEVEL_TOLERANCE = 0.2
            local COAST_AVERAGE_HEIGHT = -0.8
            local COAST_AVERAGE_HEIGHT_TOLERANCE = 0.8
            -- Analyse indices

            local hasLandIndex = false
            local hasWaterIndex = false
            --for index, height in ipairs(indicesHeights) do
            for i = 1, indicesCount, 1 do
                hasMountainIndex = hasMountainIndex or indicesHeights[i] > LAND_LEVEL
                hasLandIndex = hasLandIndex or math.abs(LAND_LEVEL - indicesHeights[i]) < LAND_LEVEL_TOLERANCE
                hasWaterIndex = hasWaterIndex or indicesHeights[i] < (LAND_LEVEL - LAND_LEVEL_TOLERANCE)
            end
            -- Evaluate and determine cultivation mode
            if not hasLandIndex then
                if averageHeight < COAST_AVERAGE_HEIGHT then
                    return "cm_MAD_OCEAN"
                else
                    return "cm_MAD_LAND"
                end
            elseif (not hasMountainIndex) and hasWaterIndex then
                if math.abs(COAST_AVERAGE_HEIGHT - averageHeight) < COAST_AVERAGE_HEIGHT_TOLERANCE then
                    return "cm_MAD_COAST"
                else
                    return "cm_MAD_OCEAN"
                end
            elseif (not hasMountainIndex) and (not hasWaterIndex) then
                return "cm_MADness"
            else
                if hasWaterIndex then
                    return "cm_MAD_COAST"
                else
                    return "cm_MADness"
                end
            end
        end
    })
end

registerRockets = function()

    -------------------------------
    --          MADness          --
    -------------------------------

	ContentRegistry.registerRocket("ro_madnessMissileTier1", {
        langKey = "MAD Missile Tier 1",
        iconID = "interplanetaryNuclearRocketIcon_Tier3.png",
        constructionTime = 60.0,
        constructionCostMoney = 100,
        constructionCostItems = {
            {
                itemTypeID = "r_oil",
                amount = 10,
            },
            {
                itemTypeID = "i_steel",
                amount = 5
            },
        },
        unlockCondition = {
            type = UNLOCK_TYPE_TECHNOLOGY,
            technologyID = "t_countdownTimer",
        },
        speed = 45.0,
        accelerationTime = 5.0,
        explosionDuration = 6.0,
        explosionRadius = 100.0,
        damagePerTick = 40,
        epicenterRadius = 50.0,
        epicenterDamageMultiplier = 1.5,
    })

    ContentRegistry.registerRocket("ro_madnessMissileTier2", {
        langKey = "MAD Missile Tier 2",
        iconID = "interplanetaryNuclearRocketIcon_Tier3.png",
        constructionTime = 80.0,
        constructionCostMoney = 200,
        constructionCostItems = {
            {
                itemTypeID = "r_oil",
                amount = 15,
            },
            {
                itemTypeID = "i_steel",
                amount = 10
            },
        },
        unlockCondition = {
            type = UNLOCK_TYPE_TECHNOLOGY,
            technologyID = "t_countdownTimer",
        },
        speed = 55.0,
        accelerationTime = 4.5,
        explosionDuration = 5.0,
        explosionRadius = 150.0,
        damagePerTick = 50,
        epicenterRadius = 100.0,
        epicenterDamageMultiplier = 2,
    })

    ContentRegistry.registerRocket("ro_madnessMissileTier3", {
        langKey = "MAD Missile Tier 3",
        iconID = "interplanetaryNuclearRocketIcon_Tier3.png",
        constructionTime = 100.0,
        constructionCostMoney = 300,
        constructionCostItems = {
            {
                itemTypeID = "r_oil",
                amount = 20,
            },
            {
                itemTypeID = "i_steel",
                amount = 15
            },
        },
        unlockCondition = {
            type = UNLOCK_TYPE_TECHNOLOGY,
            technologyID = "t_countdownTimer",
        },
        speed = 75.0,
        accelerationTime = 4.0,
        explosionDuration = 4.0,
        explosionRadius = 200.0,
        damagePerTick = 75,
        epicenterRadius = 150.0,
        epicenterDamageMultiplier = 2.5,
    })
end

registerTurrets = function()
	
end

registerBuildings = function()

    -------------------------------
    --          MADness          --
    -------------------------------

    ContentRegistry.registerBuilding("b_mad_bloodPump", {
        langKey = "Blood Pump",
        buildingTypeID = "offshoreWindPark.psb",
        placingMode = "cm_MAD_COAST",
        iconID = "items/i_mad_blood.png",
        upkeep = 0,
        constructionCostMoney = 150,
        tier = 1,
        maxHitpoints = 500,
    })

	ContentRegistry.registerBuilding("b_mad_Silo", {
        langKey = "MAD Silo",
        buildingTypeID = "interplanetaryRocketSilo.psb",
        placingMode = "cm_MAD_LAND",
        iconID = "buildingIcons/interplanetaryRocketSiloIcon.png",
        upkeep = 200,
        constructionCostMoney = 2000,
        constructionCostItems = {
            {
                itemTypeID = "i_bricks",
                amount = 20,
            },
            {
                itemTypeID = "i_steel",
                amount = 10,
            },
        },
        tier = 1,
        powerConsumption = 10,
        modules = {
            {
                moduleID = "pwr_consuming",
            },
            {
                moduleID = "rocketSilo",
                rocketIDsConstructable = {
                    "ro_madnessMissileTier1",
                    "ro_madnessMissileTier2",
                    "ro_madnessMissileTier3",
                },
                launchTime = 30.0,
                cooldown = 5.0,
                doorIndex1 = 1,
                doorIndex2 = 2,
                doorOpenTime = 1.0,
                doorCloseTime = 3.0,
                maxDoorRotation = 100.0,
                rocketSpawnDepth = 9.0,
            },
        },
        maxHitpoints = 6000,
        suppressParticles = true,
    })
end

registerBuildingMenuEntries = function()
	
end

registerSpaceships = function()
	
end

registerTechnologies = function()

    -------------------------------
    --          MADness          --
    -------------------------------

    ContentRegistry.registerTechnology("t_countdownTimer", RESEARCH_ORIENTATION_SCIENCE, {
        linkID = "t_countdown",
        requiredPoints = 50,
        unlockedBuildings = {
            "b_mad_Silo",
        },
        unlockedRockets = {
            "ro_madnessMissileTier1",
            "ro_madnessMissileTier2",
            "ro_madnessMissileTier3",
        }

    })

end

