Config = {}

Config.Target = {
    Name = 'ox:option1',
    Event = 'usa:taxi',
    Icon = 'fa-solid fa-taxi',
    Label = 'Sali sul Taxi'
}

Config.Ped = {
    Taxi = 's_m_y_airworker',
    Coords = vector4(900.2155, -179.2813, 72.8669, 275.7442)
}

Config.Blip = {
    Coords = vector4(898.7935, -180.2265, 73.8082, 240.3777),
    Sprite = 67,
    Scale = 0.7,
    Colour = 5,
    Name = "Taxi System"
}

Config.Veicolo = {
    Spawn = true,
    Name = "taxi",
    Coords = vector4(899.5233, -180.2696, 71.8145, 239.4218)
}

Config.Fermate = {
    Titolo = 'DECIDI LA FERMATA',
    Desc = '🚕 FERMATE DISPONIBILI 🚕',
    Ferma1 = "🚏 GARAGE CENTRALE",
    Ferma2 = "🚏 CENTRALE DI POLIZIA",
    Ferma3 = "🚏 CONCESSIONARIO",
    Ferma4 = "🚏 OSPEDALE",
    Ferma5 = "🚏 MECCANICO (BENNYS)",
    Ferma6 = "🚏 MECCANICO (SANTOS CUSTOMS)",
    Ferma7 = "🚏 PACIFIC", 
    Ferma8 = "🚏 NEGOZIETTO (125)",
    Ferma9 = "🚏 ARMERIA (60)", 
    Ferma10 = "🚏 CENTRO IMPIEGHI"
}

Config.Progress = {
    Bar = true,
    Circle = {
        Active = false, 
        Position = 'bottom'
    } 
}

Config.Acquisto = {
    Item = "money",
    Amount = 250,
    Progress = 3000,
    ServerTrigger = 'pagamento'
}

Config.Locales = {
    Inv = 'Non possiedi abbastanza soldi per salire sul taxi!',
    Progress = 'Stai per salire sul taxi',
    Taxi = 'Sei giunto alla tua fermata!'
}

Config.Posizioni = {
    vector3(222.9715, -856.2241, 30.1702),
    vector3(392.9017, -991.6021, 29.4174),
    vector3(-69.2779, -1090.9652, 26.6395),
    vector3(-464.2196, -338.9873, 34.5009),
    vector3(-198.4417, -1296.2850, 31.2959),
    vector3(-373.0274, -104.3414, 38.6822),
    vector3(220.2462, 208.1273, 105.4720),
    vector3(26.5426, -1354.7584, 29.3427),
    vector3(804.7698, -2131.4663, 29.3586),
    vector3(1213.7241, -1273.3187, 35.2265)
}

Config.Fermata = {
    {
        Nome = "Fermate Taxi",
        Sprite = 409,
        Scale = 0.7,
        Colour = 0,
        Coordinate = vector3(222.9715, -856.2241, 30.1702) -- GARAGE CENTRALE
    },
    {
        Nome = "Fermate Taxi",
        Sprite = 409,
        Scale = 0.7,
        Colour = 0,
        Coordinate = vector3(392.9017, -991.6021, 29.4174) -- CENTRALE DI POLIZIA
    },
    {
        Nome = "Fermate Taxi",
        Sprite = 409,
        Scale = 0.7,
        Colour = 0,
        Coordinate = vector3(-69.2779, -1090.9652, 26.6395) -- CONCESSIONARIO
    },
    {
        Nome = "Fermate Taxi",
        Sprite = 409,
        Scale = 0.7,
        Colour = 0,
        Coordinate = vector3(-464.2196, -338.9873, 34.5009) -- OSPEDALE
    },
    {
        Nome = "Fermate Taxi",
        Sprite = 409,
        Scale = 0.7,
        Colour = 0,
        Coordinate = vector3(-198.4417, -1296.2850, 31.2959) -- MECCANICO BENNYS
    },
    {
        Nome = "Fermate Taxi",
        Sprite = 409,
        Scale = 0.7,
        Colour = 0,
        Coordinate = vector3(-373.0274, -104.3414, 38.6822) -- MECCANICO LOS SANTOS CUSTOMS
    },
    {
        Nome = "Fermate Taxi",
        Sprite = 409,
        Scale = 0.7,
        Colour = 0,
        Coordinate = vector3(220.2462, 208.1273, 105.4720) -- PACIFIC
    },
    {
        Nome = "Fermate Taxi",
        Sprite = 409,
        Scale = 0.7,
        Colour = 0,
        Coordinate = vector3(26.5426, -1354.7584, 29.3427) -- NEGOZIETTO 125
    },
    {
        Nome = "Fermate Taxi",
        Sprite = 409,
        Scale = 0.7,
        Colour = 0,
        Coordinate = vector3(804.7698, -2131.4663, 29.3586) -- ARMERIA 60
    },
    {
        Nome = "Fermate Taxi",
        Sprite = 409,
        Scale = 0.7,
        Colour = 0,
        Coordinate = vector3(1213.7241, -1273.3187, 35.2265) -- CENTRO IMPIEGHI
    }
}
