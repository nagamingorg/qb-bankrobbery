Config = Config or {}

--- This is called whenever an item check occurs
---
--- Accepted formats for `items`:
--- ```lua
--- 'itemName'
---
--- {'item1', 'item2', 'etc'}
---
--- {['item1'] = amount, ['item2'] = 2, ['etc' = 5]} -- the amount here is the amount needed of that item, if the amount variable is defined when this format is used, the amount variable will be prioritized
--- ```
--- @param items table | array | string
--- @param amount number | nil
--- @return boolean
function Config.HasItem(items, amount)
    return QBCore.Functions.HasItem(items, amount)
end

Config.PowerStations = {
    [1] = {
        coords = vector3(2835.24, 1505.68, 24.72),
        hit = false
    },
    [2] = {
        coords = vector3(2811.76, 1500.6, 24.72),
        hit = false
    },
    [3] = {
        coords = vector3(2137.73, 1949.62, 93.78),
        hit = false
    },
    [4] = {
        coords = vector3(708.92, 117.49, 80.95),
        hit = false
    },
    [5] = {
        coords = vector3(670.23, 128.14, 80.95),
        hit = false
    },
    [6] = {
        coords = vector3(692.17, 160.28, 80.94),
        hit = false
    },
    [7] = {
        coords = vector3(2459.16, 1460.94, 36.2),
        hit = false
    },
    [8] = {
        coords = vector3(2280.45, 2964.83, 46.75),
        hit = false
    },
    [9] = {
        coords = vector3(2059.68, 3683.8, 34.58),
        hit = false
    },
    [10] = {
        coords = vector3(2589.5, 5057.38, 44.91),
        hit = false
    },
    [11] = {
        coords = vector3(1343.61, 6388.13, 33.4),
        hit = false
    },
    [12] = {
        coords = vector3(236.61, 6406.1, 31.83),
        hit = false
    },
    [13] = {
        coords = vector3(-293.1, 6023.54, 31.54),
        hit = false
    }
}

Config.SmallBanks = {
    [1] = {
        ["label"] = "FLECCA Chumash Branch",
        ["coords"] = vector3(-2956.55, 481.74, 15.69),
        ["alarm"] = true,
        ["object"] = `hei_prop_heist_sec_door`,
        ["heading"] = {
            closed = 357.542,
            open = 267.542
        },
        ["camId"] = 25,
        ["isOpened"] = false,
        ["lockers"] = {
            [1] = {
                ["coords"] = vector3(-2958.54, 484.1, 15.67),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [2] = {
                ["coords"] = vector3(-2957.3, 485.95, 15.67),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [3] = {
                ["coords"] = vector3(-2955.09, 482.43, 15.67),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [4] = {
                ["coords"] = vector3(-2953.26, 482.42, 15.67),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [5] = {
                ["coords"] = vector3(-2952.63, 483.09, 15.67),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [6] = {
                ["coords"] = vector3(-2952.45, 485.66, 15.67),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [7] = {
                ["coords"] = vector3(-2953.13, 486.26, 15.67),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [8] = {
                ["coords"] = vector3(-2954.98, 486.37, 15.67),
                ["isBusy"] = false,
                ["isOpened"] = false
            }
        }
    },
    [2] = {
        ["label"] = "FLEECA Grand Senora Branch",
        ["coords"] = vector3(1175.96, 2712.87, 38.09),
        ["alarm"] = true,
        ["object"] = `v_ilev_gb_vauldr`,
        ["heading"] = {
            closed = -270.542,
            open = -370.542
        },
        ["camId"] = 25,
        ["isOpened"] = false,
        ["lockers"] = {
            [1] = {
                ["coords"] = vector3(1173.69, 2710.76, 38.07),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [2] = {
                ["coords"] = vector3(1171.78, 2711.94, 38.07),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [3] = {
                ["coords"] = vector3(1175.25, 2714.51, 38.07),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [4] = {
                ["coords"] = vector3(1175.26, 2715.97, 38.07),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [5] = {
                ["coords"] = vector3(1174.27, 2716.83, 38.07),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [6] = {
                ["coords"] = vector3(1172.32, 2716.82, 38.07),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [7] = {
                ["coords"] = vector3(1171.25, 2716.08, 38.07),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [8] = {
                ["coords"] = vector3(1171.23, 2714.44, 38.07),
                ["isBusy"] = false,
                ["isOpened"] = false
            }
        }
    }
}

Config.BigBanks = {
    ["paleto"] = {
        ["label"] = "Blaine County Savings Bank",
        ["coords"] = vector3(-105.61, 6472.03, 31.62),
        ["alarm"] = true,
        ["object"] = -1185205679,
        ["heading"] = {
            closed = 45.45,
            open = 130.45
        },
        ["thermite"] = {
            [1] = {
                ["coords"] = vector3(-106.11, 6475.36, 31.62),
                ["isOpened"] = false,
                ["doorId"] = 5
            }
        },
        ["camId"] = 26,
        ["isOpened"] = false,
        ["lockers"] = {
            [1] = {
                ["coords"] = vector3(-107.4, 6473.87, 31.62),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [2] = {
                ["coords"] = vector3(-107.66, 6475.61, 31.62),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [3] = {
                ["coords"] = vector3(-103.52, 6475.03, 31.62),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [4] = {
                ["coords"] = vector3(-102.3, 6476.13, 31.66),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [5] = {
                ["coords"] = vector3(-102.43, 6477.45, 31.67),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [6] = {
                ["coords"] = vector3(-103.97, 6478.97, 31.62),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [7] = {
                ["coords"] = vector3(-105.39, 6479.19, 31.67),
                ["isBusy"] = false,
                ["isOpened"] = false
            },
            [8] = {
                ["coords"] = vector3(-106.57, 6478.01, 31.62),
                ["isBusy"] = false,
                ["isOpened"] = false
            }
        }
    }
}
