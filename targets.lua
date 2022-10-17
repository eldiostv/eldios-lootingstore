local QBCore = exports['qb-core']:GetCoreObject()

-- Loja Cliton Avenue
CreateThread(function ()
    exports['qb-target']:AddBoxZone("objects1", vector3(376.0, 327.67, 103.57), 1, 1, {
        name = "objects1",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "eldios-lootingstore:client:StealObjects",
                icon = "fad fa-sack-dollar",
                label = 'Snatch From Shelf'
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("objects2", vector3(378.76, 326.93, 103.57), 1, 1, {
        name = "objects2",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "eldios-lootingstore:client:StealObjects2",
                icon = "fad fa-sack-dollar",
                label = 'Snatch From Shelf'
            },
        },
        distance = 1.5
    })


-- Loja Prosperity Street
    exports['qb-target']:AddBoxZone("objects3", vector3(-1489.05, -380.68, 40.16), 1, 1, {
        name = "objects3",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "eldios-lootingstore:client:StealObjects",
                icon = "fad fa-sack-dollar",
                label = 'Snatch From Shelf'
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("objects4", vector3(-1484.96, -381.37, 40.16), 1, 1, {
        name = "objects4",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "eldios-lootingstore:client:StealObjects2",
                icon = "fad fa-sack-dollar",
                label = 'Snatch From Shelf'
            },
        },
        distance = 1.5
    })


-- Loja Barbarano Road
    exports['qb-target']:AddBoxZone("objects5", vector3(-3243.89, 1006.01, 12.83), 1, 1, {
        name = "objects5",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "eldios-lootingstore:client:StealObjects",
                icon = "fad fa-sack-dollar",
                label = 'Snatch From Shelf'
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("objects6", vector3(-3246.5, 1005.0, 12.83), 1, 1, {
        name = "objects6",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "eldios-lootingstore:client:StealObjects2",
                icon = "fad fa-sack-dollar",
                label = 'Snatch From Shelf'
            },
        },
        distance = 1.5
    })


-- Loja Route 68 
    exports['qb-target']:AddBoxZone("objects7", vector3(546.37, 2668.91, 42.16), 1, 1, {
        name = "objects7",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "eldios-lootingstore:client:StealObjects",
                icon = "fad fa-sack-dollar",
                label = 'Snatch From Shelf'
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("objects8", vector3(543.53, 2668.47, 42.16), 1, 1, {
        name = "objects8",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "eldios-lootingstore:client:StealObjects2",
                icon = "fad fa-sack-dollar",
                label = 'Snatch From Shelf'
            },
        },
        distance = 1.5
    })

-- Loja Alhamura Drive
    exports['qb-target']:AddBoxZone("objects9", vector3(1964.31, 3744.43, 32.34), 1, 1, {
        name = "objects9",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "eldios-lootingstore:client:StealObjects",
                icon = "fad fa-sack-dollar",
                label = 'Snatch From Shelf'
            },
        },
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("objects10", vector3(1961.57, 3746.23, 32.34), 1, 1, {
        name = "objects10",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "eldios-lootingstore:client:StealObjects2",
                icon = "fad fa-sack-dollar",
                label = 'Snatch From Shelf'
            },
        },
        distance = 1.5
    })

-- Loja Paleto Bay
    exports['qb-target']:AddBoxZone("objects11", vector3(164.04, 6640.9, 31.7), 1, 1, {
        name = "objects11",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "eldios-lootingstore:client:StealObjects",
                icon = "fad fa-sack-dollar",
                label = 'Snatch From Shelf'
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("objects12", vector3(166.87, 6641.84, 31.7), 1, 1, {
        name = "objects12",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "eldios-lootingstore:client:StealObjects2",
                icon = "fad fa-sack-dollar",
                label = 'Snatch From Shelf'
            },
        },
        distance = 1.5
    })
end)
