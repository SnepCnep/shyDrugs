Config = {}

-- To change the webhook, please do so in server/main.lua, line 3

Config.Punishement = function(source)
    TriggerEvent("BanSql:ICheat", "Automatic ban for cheating (shyDrugs-A)", src)
    sendToDiscord("shyDrugs", GetPlayerName(source).." triggered the sell event, but is not selling. Hacker.", 16735311)
end

Config.lbphone = true -- True: enable lb_phone messages as notifications. False: use the notify.lua

Config.dealerPed = 'a_m_m_hasjew_01'
Config.dealerPos = { x = 970.7463, y = -1144.4193, z = 25.2000, h = 153.79}

Config.PedType = 'a_m_o_soucent_03'

Config.EnableSnitch = true -- Enable or disable snitching deals to gangs
Config.SnitchTime = 30000 -- If enabled, time before the gangs get the notification
Config.Random = 5 -- Higher = less chance, lower = higher chance
Config.GangJobs = {
    [1] = 'mc',
    [2] = 'saints',
    -- etc
}

Config.MaxSell = 50 -- How many units can be sold at one location
Config.DealDuration = 15000 -- 15 seconds

Config.cokeItem = 'coke_brick'
Config.cokePriceMax = 2500 -- Price per coke brick
Config.cokePriceMin = 2100

Config.methItem = 'methbag'
Config.methPriceMax = 1000 -- Price per meth pouch
Config.methPriceMin = 500

Config.weedItem = 'weedbag'
Config.weedPriceMax = 700 -- Price per weed pouch
Config.weedPriceMin = 500

Config.Translations = { -- don't change the blue variables, do change the text between "".
    name = 'Mohammed',
    talk = 'Talk with Mohammed',
    talk2 = 'Talk with the dealer',
    busy = 'You are already dealing!',
    busydesc = 'Real men can only do one thing at a time!',
    junk = 'Crack Junk',
    sellprompt = 'What do you want to sell me, you little twat?',
    stopsell = 'Click me if you want to stop selling after this dealer',
    dontwant = 'I want the real shit, not those pieces of trash!',
    backtoboss = 'Go back to my boss.',
    nothing = 'Wasting my time, not even filling my form in!',

    go = 'Go to the next location:',
    goNotify = 'Go to the next location. Waypoint set!',
    pouchfull = 'Your pouches are full. Come prepared next time!',
    minimum = 'You need a minimum of 10 units. No less.',
    serious = 'You kidding me? COME. PREPARED.',
    ty = 'Thanks for the business, kid. Come again next time!',
    bruh = 'Missed chance. Idiot.'
}

Config.DealerCoords = { -- don't change the numbers, do change the coords.
    [1] = {x = -1112.2235, y = -1578.3495, z = 8.6795, h = 34.5854},
    [2] = {x = -947.3383, y = -1551.0868, z = 5.1775, h = 18.8852},
    [3] = {x = -1323.1718, y = -1025.5245, z = 7.7498, h = 118.6097},
    [4] = {x = -1267.7577, y = -811.9387, z = 17.1076, h = 126.3459},
    [5] = {x = -604.2888, y = -802.5153, z = 25.4038, h = 87.1480},
    [6] = {x = -1339.4940, y = -245.7167, z = 42.6821, h = 121.8465},
    [7] = {x = -2009.2489, y = 367.4658, z = 94.8244, h = 269.6546},
    [8] = {x = -908.7746, y = 693.6542, z = 151.4360, h = 358.6388},
    [9] = {x = -747.1613, y = 808.2271, z = 215.0322, h = 286.5634},
    [10] = {x = 128.0333, y = 565.9805, z = 183.9595, h = 5.4494},
    [11] = {x = 385.6542, y = 66.8961, z = 97.9780, h = 157.8943},
    [12] = {x = 50.3483, y = -108.3785, z = 55.9989, h = 338.4030},
    [13] = {x = 880.3788, y = -205.0714, z = 71.9764, h = 148.8010},
    [14] = {x = 1262.3716, y = -429.9174, z = 70.0146, h = 292.1860},
    [15] = {x = 1125.2587, y = -1010.4827, z = 44.6704, h = 94.6886},
    [16] = {x = 264.2839, y = -1026.7739, z = 29.2169, h = 178.1410},
    [17] = {x = 46.1077, y = -1864.2095, z = 23.2783, h = 133.6780},
    [18] = {x = 557.7040, y = -1759.6436, z = 29.3130, h = 244.4929},
    [19] = {x = 454.9207, y = -1580.2998, z = 32.8249, h = 319.4289},
    [20] = {x = -716.4196, y = -864.7766, z = 23.2069, h = 268.3452},
    [21] = {x = -2205.8032, y = -373.8559, z = 13.3205, h = 317.3353},
    [22] = {x = -2963.4587, y = 432.1765, z = 15.2764, h = 85.9255},
    [23] = {x = -1134.4933, y = 2682.9070, z = 18.5140, h = 130.1854},
    [24] = {x = 1880.5118, y = 3920.5779, z = 33.2150, h = 105.2056},
    [25] = {x = 1142.4220, y = 2651.1428, z = 38.1409, h = 87.6662},
    [26] = {x = -315.5080, y = 6193.9585, z = 31.5608, h = 43.1369},
    [27] = {x = 149.1231, y = 6362.6528, z = 31.5343, h = 116.5292},
    [28] = {x = 1510.4498, y = 6326.0059, z = 24.6071, h = 59.2007},
    [29] = {x = 2243.3835, y = 5154.3574, z = 57.8871, h = 148.2164},
    [30] = {x = 1654.7974, y = 4862.0815, z = 41.9917, h = 278.5166},
    [31] = {x = -1.9994, y = -1442.0236, z = 30.9631, h = 180.3844},
    [32] = {x = -161.1723, y = -1638.8488, z = 34.0289, h = 317.7120},
    [33] = {x = -528.5319, y = -1784.7839, z = 21.5939, h = 329.2796},
    [34] = {x = -1579.0557, y = 185.0768, z = 58.8584, h = 201.2085},
    [35] = {x = -3229.1326, y = 927.2899, z = 13.9697, h = 299.0905},
    [36] = {x = 173.6171, y = 2778.9685, z = 46.0773, h = 186.1874},
    [37] = {x = 1373.3118, y = -555.7847, z = 74.6857, h = 66.7257},
    [38] = {x = 327.0433, y = -1258.5889, z = 32.1053, h = 273.2522},
    [39] = {x = -500.5667, y = -731.5366, z = 33.2119, h = 268.1176},
    [40] = {x = -174.3667, y = -1273.2094, z = 32.5980, h = 79.3122}
}


Config.Strings = { -- don't change the numbers, do change the text.
    [1] = "Someone just sold me some whack-ass drugs. Help me beat them up!",
    [2] = "This idiot wants to sell me junk-ass drugs. Get him!",
    [3] = "IM INNOCENT! SOMEONE IS TRYING TO ROB ME!",
    [4] = "Someone is sniffing coke right in front of me, grab his ass!",
    [5] = "These drugs are as lame as my grannies teeth, get his stupid ass!",
    [6] = "HELP!!!!!!!!!!",
    [7] = "This dude says he is the biggest player in the game. True or nahh??",
    [8] = "These motherfuckers are trying to sell me poor quality drugs. Get their booties!",
    [9] = "My grandma cooks better meth than this shit. Help me get them!",
    [10] = "Even whipped cream is nicer to snort, holy shit. Lend me a hand catching these fools, will ya?",
    [11] = "Someone just sold me some whack-ass drugs. Help me beat them up!",
    [12] = "This idiot wants to sell me junk-ass drugs. Get him!",
    [13] = "IM INNOCENT! SOMEONE IS TRYING TO ROB ME!",
    [14] = "Someone is sniffing coke right in front of me, grab his ass!",
    [15] = "These drugs are as lame as my grannies teeth, get his stupid ass!",
    [16] = "HELP!!!!!!!!!!",
    [17] = "This dude says he is the biggest player in the game. True or nahh??",
    [18] = "These motherfuckers are trying to sell me poor quality drugs. Get their booties!",
    [19] = "My grandma cooks better meth than this shit. Help me get them!",
    [20] = "Even whipped cream is nicer to snort, holy shit. Lend me a hand catching these fools, will ya?",
    [21] = "Someone just sold me some whack-ass drugs. Help me beat them up!",
    [22] = "This idiot wants to sell me junk-ass drugs. Get him!",
    [23] = "IM INNOCENT! SOMEONE IS TRYING TO ROB ME!",
    [24] = "Someone is sniffing coke right in front of me, grab his ass!",
    [25] = "These drugs are as lame as my grannies teeth, get his stupid ass!",
    [26] = "HELP!!!!!!!!!!",
    [27] = "This dude says he is the biggest player in the game. True or nahh??",
    [28] = "These motherfuckers are trying to sell me poor quality drugs. Get their booties!",
    [29] = "My grandma cooks better meth than this shit. Help me get them!",
    [30] = "Even whipped cream is nicer to snort, holy shit. Lend me a hand catching these fools, will ya?",
    [31] = "Someone just sold me some whack-ass drugs. Help me beat them up!",
    [32] = "This idiot wants to sell me junk-ass drugs. Get him!",
    [33] = "IM INNOCENT! SOMEONE IS TRYING TO ROB ME!",
    [34] = "Someone is sniffing coke right in front of me, grab his ass!",
    [35] = "These drugs are as lame as my grannies teeth, get his stupid ass!",
    [36] = "HELP!!!!!!!!!!",
    [37] = "This dude says he is the biggest player in the game. True or nahh??",
    [38] = "These motherfuckers are trying to sell me poor quality drugs. Get their booties!",
    [39] = "My grandma cooks better meth than this shit. Help me get them!",
    [40] = "Even whipped cream is nicer to snort, holy shit. Lend me a hand catching these fools, will ya?"
}

return Config
