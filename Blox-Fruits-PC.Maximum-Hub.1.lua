local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Maximum Hub", 5013109572)

local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),
TextColor = Color3.fromRGB(255, 255, 255)
}

local page = venyx:addPage("Main Menu", 1073830992)
local i = venyx:addPage("Misc", 23481010)
local H = venyx:addPage("Player", 7992557358)
local K = venyx:addPage("Teleport", 7626871475)
local J = venyx:addPage("Shop", 9006897360)
local E = venyx:addPage("Raid - Vision", 7407483146)
local E1 = venyx:addPage("Stats", 5917153832)
local theme = venyx:addPage("Setting GUI", 6942070576)

local placeId = game.PlaceId
if placeId == 2753915549 then
    OldWorld = true
elseif placeId == 4442272183 then
    NewWorld = true
elseif placeId == 7449423635 then
    ThreeWorld = true
end
StatsBypass = "NoBypassTP"
function CheckQuest()
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    if OldWorld then
        if MyLevel == 1 or MyLevel <= 9 then -- Bandit
            Ms = "Bandit [Lv. 5]"
            NameQuest = "BanditQuest1"

            LevelQuest = 1
            NameMon = "Bandit"

            CFrameMon = CFrame.new(1145, 17, 1634)
            VectorMon = Vector3.new(1145, 17, 1634)

            CFrameQuest = CFrame.new(1060, 17, 1547)
            VectorQuest = Vector3.new(1060, 17, 1547)
        elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
            Ms = "Monkey [Lv. 14]"
            NameQuest = "JungleQuest"

            LevelQuest = 1
            NameMon = "Monkey"

            CFrameMon = CFrame.new(-1496, 39, 35)
            VectorMon = Vector3.new(-1496, 39, 35)

            CFrameQuest = CFrame.new(-1602, 37, 152)
            VectorQuest = Vector3.new(-1602, 37, 152)
        elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
            Ms = "Gorilla [Lv. 20]"
            NameQuest = "JungleQuest"

            LevelQuest = 2
            NameMon = "Gorilla"

            CFrameMon = CFrame.new(-1237, 6, -486)
            VectorMon = Vector3.new(-1237, 7, -486)

            CFrameQuest = CFrame.new(-1602, 37, 152)
            VectorQuest = Vector3.new(-1602, 37, 152)
        elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
            Ms = "Pirate [Lv. 35]"
            NameQuest = "BuggyQuest1"

            LevelQuest = 1
            NameMon = "Pirate"

            CFrameMon = CFrame.new(-1115, 14, 3938)
            VectorMon = Vector3.new(-1115, 14, 3938)

            CFrameQuest = CFrame.new(-1140, 5, 3828)
            VectorQuest = Vector3.new(-1140, 5, 3828)
        elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
            Ms = "Brute [Lv. 45]"
            NameQuest = "BuggyQuest1"

            LevelQuest = 2
            NameMon = "Brute"

            CFrameMon = CFrame.new(-1145, 15, 4350)
            VectorMon = Vector3.new(-1146, 15, 4350)

            CFrameQuest = CFrame.new(-1140, 5, 3828)
            VectorQuest = Vector3.new(-1140, 5, 3828)
        elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
            Ms = "Desert Bandit [Lv. 60]"
            NameQuest = "DesertQuest"

            LevelQuest = 1
            NameMon = "Desert Bandit"

            CFrameMon = CFrame.new(932, 7, 4484)
            VectorMon = Vector3.new(932, 7, 4484)

            CFrameQuest = CFrame.new(897, 7, 4388)
            VectorQuest = Vector3.new(897, 7, 4388)
        elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
            Ms = "Desert Officer [Lv. 70]"
            NameQuest = "DesertQuest"

            LevelQuest = 2
            NameMon = "Desert Officer"

            CFrameMon = CFrame.new(1572, 10, 4373)
            VectorMon = Vector3.new(1572, 10, 4373)

            CFrameQuest = CFrame.new(897, 7, 4388)
            VectorQuest = Vector3.new(897, 7, 4388)
        elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
            Ms = "Snow Bandit [Lv. 90]"
            NameQuest = "SnowQuest"

            LevelQuest = 1
            NameMon = "Snow Bandits"

            CFrameMon = CFrame.new(1289, 106, -1442)
            VectorMon = Vector3.new(1289, 106, -1442)

            CFrameQuest = CFrame.new(1386, 87, -1297)
            VectorQuest = Vector3.new(1386, 87, -1297)
        elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
            Ms = "Snowman [Lv. 100]"
            NameQuest = "SnowQuest"

            LevelQuest = 2
            NameMon = "Snowman"

            CFrameMon = CFrame.new(1289, 106, -1442)
            VectorMon = Vector3.new(1289, 106, -1442)

            CFrameQuest = CFrame.new(1386, 87, -1297)
            VectorQuest = Vector3.new(1386, 87, -1297)
        elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
            Ms = "Chief Petty Officer [Lv. 120]"
            NameQuest = "MarineQuest2"

            LevelQuest = 1
            NameMon = "Chief Petty Officer"

            CFrameMon = CFrame.new(-4855, 23, 4308)
            VectorMon = Vector3.new(-4855, 23, 4308)

            CFrameQuest = CFrame.new(-5036, 29, 4325)
            VectorQuest = Vector3.new(-5036, 29, 4325)
        elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
            Ms = "Sky Bandit [Lv. 150]"
            NameQuest = "SkyQuest"

            LevelQuest = 1
            NameMon = "Sky Bandit"

            CFrameMon = CFrame.new(-4981, 278, -2830)
            VectorMon = Vector3.new(-4981, 278, -2830)
            
            CFrameQuest = CFrame.new(-4842, 718, -2623)
            VectorQuest = Vector3.new(-4842, 718, -2623)
        elseif MyLevel == 175 or MyLevel <= 224 then -- Dark Master
            Ms = "Dark Master [Lv. 175]"
            NameQuest = "SkyQuest"

            LevelQuest = 2
            NameMon = "Dark Master"

            CFrameMon = CFrame.new(-5250, 389, -2272)
            VectorMon = Vector3.new(-5250, 389, -2272)

            CFrameQuest = CFrame.new(-4842, 718, -2623)
            VectorQuest = Vector3.new(-4842, 718, -2623)
        elseif MyLevel == 225 or MyLevel <= 274 then -- Toga Warrior
            Ms = "Toga Warrior [Lv. 225]"
            NameQuest = "ColosseumQuest"

            LevelQuest = 1
            NameMon = "Toga Warrior"

            CFrameMon = CFrame.new(-1770, 8, -2777)
            VectorMon = Vector3.new(-1770, 8, -2777)

            CFrameQuest = CFrame.new(-1576, 8, -2985)
            VectorQuest = Vector3.new(-1576, 8, -2985)
        elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
            Ms = "Gladiator [Lv. 275]"
            NameQuest = "ColosseumQuest"

            LevelQuest = 2
            NameMon = "Gladiato"

            CFrameMon = CFrame.new(-1278, 8, -3240)
            VectorMon = Vector3.new(-1278, 8, -3240)

            CFrameQuest = CFrame.new(-1576, 8, -2985)
            VectorQuest = Vector3.new(-1576, 8, -2985)
        elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
            Ms = "Military Soldier [Lv. 300]"
            NameQuest = "MagmaQuest"

            LevelQuest = 1
            NameMon = "Military Soldier"

            CFrameMon = CFrame.new(-5408, 11, 8447)
            VectorMon = Vector3.new(-5408, 11, 8447)

            CFrameQuest = CFrame.new(-5316, 12, 8517)
            VectorQuest = Vector3.new(-5316, 12, 8517)
        elseif MyLevel == 300 or MyLevel <= 374 then -- Military Spy
            Ms = "Military Spy [Lv. 330]"
            NameQuest = "MagmaQuest"

            LevelQuest = 2
            NameMon = "Military Spy"

            CFrameMon = CFrame.new(-5815, 84, 8820)
            VectorMon = Vector3.new(-5815, 84, 8820)

            CFrameQuest = CFrame.new(-5316, 12, 8517)
            VectorQuest = Vector3.new(-5316, 12, 8517)
        elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
            Ms = "Fishman Warrior [Lv. 375]"
            NameQuest = "FishmanQuest"

            LevelQuest = 1
            NameMon = "Fishman Warrior"

            CFrameMon = CFrame.new(60859, 19, 1501)
            VectorMon = Vector3.new(60859, 19, 1501)

            CFrameQuest = CFrame.new(61123, 19, 1569)
            VectorQuest = Vector3.new(61123, 19, 1569)
        elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
            Ms = "Fishman Commando [Lv. 400]"
            NameQuest = "FishmanQuest"

            LevelQuest = 2
            NameMon = "Fishman Commando"

            CFrameMon = CFrame.new(61891, 19, 1470)
            VectorMon = Vector3.new(61891, 19, 1470)

            CFrameQuest = CFrame.new(61123, 19, 1569)
            VectorQuest = Vector3.new(61123, 19, 1569)
        elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
            Ms = "God's Guard [Lv. 450]"
            NameQuest = "SkyExp1Quest"

            LevelQuest = 1
            NameMon = "God's Guards"

            CFrameMon = CFrame.new(-4698, 845, -1912)
            VectorMon = Vector3.new(-4698, 845, -1912)

            CFrameQuest = CFrame.new(-4722, 845, -1954)
            VectorQuest = Vector3.new(-4722, 846, -1954)
        elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
            Ms = "Shanda [Lv. 475]"
            NameQuest = "SkyExp1Quest"

            LevelQuest = 2
            NameMon = "Shandas"

            CFrameMon = CFrame.new(-7685, 5567, -502)
            VectorMon = Vector3.new(-7685, 5567, -502)

            CFrameQuest = CFrame.new(-7862, 5546, -380)
            VectorQuest = Vector3.new(-7862, 5546, -380)
        elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
            Ms = "Royal Squad [Lv. 525]"
            NameQuest = "SkyExp2Quest"

            LevelQuest = 1
            NameMon = "Royal Squad"

            CFrameMon = CFrame.new(-7670, 5607, -1460)
            VectorMon = Vector3.new(-7670, 5607, -1460)

            CFrameQuest = CFrame.new(-7904, 5636, -1412)
            VectorQuest = Vector3.new(-7904, 5636, -1412)
        elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
            Ms = "Royal Soldier [Lv. 550]"
            NameQuest = "SkyExp2Quest"

            LevelQuest = 2
            NameMon = "Royal Soldier"

            CFrameMon = CFrame.new(-7828, 5607, -1744)
            VectorMon = Vector3.new(-7828, 5607, -1744)

            CFrameQuest = CFrame.new(-7904, 5636, -1412)
            VectorQuest = Vector3.new(-7904, 5636, -1412)
        elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
            Ms = "Galley Pirate [Lv. 625]"
            NameQuest = "FountainQuest"

            LevelQuest = 1
            NameMon = "Galley Pirate"

            CFrameMon = CFrame.new(5589, 45, 3996)
            VectorMon = Vector3.new(5589, 45, 3996)

            CFrameQuest = CFrame.new(5256, 39, 4050)
            VectorQuest = Vector3.new(5256, 39, 4050)
        elseif MyLevel >= 650 then -- Galley Captain
            Ms = "Galley Captain [Lv. 650]"
            NameQuest = "FountainQuest"

            LevelQuest = 2
            NameMon = "Galley Captain"

            CFrameMon = CFrame.new(5649, 39, 4936)
            VectorMon = Vector3.new(5649, 39, 4936)

            CFrameQuest = CFrame.new(5256, 39, 4050)
            VectorQuest = Vector3.new(5256, 39, 4050)
        end
    end
    if NewWorld then
        if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
            Ms = "Raider [Lv. 700]"
            NameQuest = "Area1Quest"

            LevelQuest = 1
            NameMon = "Raider"

            CFrameQuest = CFrame.new(-425, 73, 1837)
            VectorQuest = Vector3.new(-425, 73, 1837)

            CFrameMon = CFrame.new(-746, 39, 2390)
            VectorMon = Vector3.new(-746, 39, 2389)
        elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
            Ms = "Mercenary [Lv. 725]"
            NameQuest = "Area1Quest"

            LevelQuest = 2
            NameMon = "Mercenary"

            CFrameQuest = CFrame.new(-425, 73, 1837)
            VectorQuest = Vector3.new(-425, 73, 1837)

            CFrameMon = CFrame.new(-874, 141, 1312)
            VectorMon = Vector3.new(-874, 141, 1312)
        elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
            Ms = "Swan Pirate [Lv. 775]"
            NameQuest = "Area2Quest"

            LevelQuest = 1
            NameMon = "Swan Pirate"

            CFrameQuest = CFrame.new(634, 73, 918)
            VectorQuest = Vector3.new(634, 73, 918)

            CFrameMon = CFrame.new(878, 122, 1235)
            VectorMon = Vector3.new(878, 122, 1235)
        elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
            Ms = "Factory Staff [Lv. 800]"
            NameQuest = "Area2Quest"

            LevelQuest = 2
            NameMon = "Factory Staff"

            CFrameQuest = CFrame.new(634, 73, 918)
            VectorQuest = Vector3.new(634, 73, 918)
            
            CFrameMon = CFrame.new(295, 73, -56)
            VectorMon = Vector3.new(295, 73, -56)
        elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
            Ms = "Marine Lieutenant [Lv. 875]"
            NameQuest = "MarineQuest3"

            LevelQuest = 1
            NameMon = "Marine Lieutenant"

            CFrameMon = CFrame.new(-2806, 73, -3038)
            VectorMon = Vector3.new(-2806, 73, -3038)

            CFrameQuest = CFrame.new(-2443, 73, -3219)
            VectorQuest = Vector3.new(-2443, 73, -3219)
        elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
            Ms = "Marine Captain [Lv. 900]"
            NameQuest = "MarineQuest3"

            LevelQuest = 2
            NameMon = "Marine Captain"

            CFrameMon = CFrame.new(-1869, 73, -3320)
            VectorMon = Vector3.new(-1869, 73, -3320)

            CFrameQuest = CFrame.new(-2443, 73, -3219)
            VectorQuest = Vector3.new(-2443, 73, -3219)
        elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
            Ms = "Zombie [Lv. 950]"
            NameQuest = "ZombieQuest"

            LevelQuest = 1
            NameMon = "Zombie"

            CFrameMon = CFrame.new(-5736, 126, -728)
            VectorMon = Vector3.new(-5736, 126, -728)

            CFrameQuest = CFrame.new(-5494, 49, -795)
            VectorQuest = Vector3.new(-5494, 49, -794)
        elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
            Ms = "Vampire [Lv. 975]"
            NameQuest = "ZombieQuest"

            LevelQuest = 2
            NameMon = "Vampire"

            CFrameMon = CFrame.new(-6033, 7, -1317)
            VectorMon = Vector3.new(-6033, 7, -1317)

            CFrameQuest = CFrame.new(-5494, 49, -795)
            VectorQuest = Vector3.new(-5494, 49, -795)
        elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
            Ms = "Snow Trooper [Lv. 1000]"
            NameQuest = "SnowMountainQuest"

            LevelQuest = 1
            NameMon = "Snow Trooper"

            CFrameMon = CFrame.new(478, 402, -5362)
            VectorMon = Vector3.new(478, 402, -5362)

            CFrameQuest = CFrame.new(605, 402, -5371)
            VectorQuest = Vector3.new(605, 402, -5371)
        elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
            Ms = "Winter Warrior [Lv. 1050]"
            NameQuest = "SnowMountainQuest"

            LevelQuest = 2
            NameMon = "Winter Warrior"

            CFrameMon = CFrame.new(1157, 430, -5188)
            VectorMon = Vector3.new(1157, 430, -5188)

            CFrameQuest = CFrame.new(605, 402, -5371)
            VectorQuest = Vector3.new(605, 402, -5371)
        elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
            Ms = "Lab Subordinate [Lv. 1100]"
            NameQuest = "IceSideQuest"

            LevelQuest = 1
            NameMon = "Lab Subordinate"

            CFrameMon = CFrame.new(-5782, 42, -4484)
            VectorMon = Vector3.new(-5782, 42, -4484)

            CFrameQuest = CFrame.new(-6060, 16, -4905)
            VectorQuest = Vector3.new(-6060, 16, -4905)
        elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
            Ms = "Horned Warrior [Lv. 1125]"
            NameQuest = "IceSideQuest"

            LevelQuest = 2
            NameMon = "Horned Warrior"

            CFrameMon = CFrame.new(-6406, 24, -5805)
            VectorMon = Vector3.new(-6406, 24, -5805)

            CFrameQuest = CFrame.new(-6060, 16, -4905)
            VectorQuest = Vector3.new(-6060, 16, -4905)
        elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
            Ms = "Magma Ninja [Lv. 1175]"
            NameQuest = "FireSideQuest"
            LevelQuest = 1
            NameMon = "Magma Ninja"

            CFrameMon = CFrame.new(-5428, 78, -5959)
            VectorMon = Vector3.new(-5428, 78, -5959)

            CFrameQuest = CFrame.new(-5430, 16, -5295)
            VectorQuest = Vector3.new(-5430, 16, -5296)
        elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
            Ms = "Lava Pirate [Lv. 1200]"
            NameQuest = "FireSideQuest"

            LevelQuest = 2
            NameMon = "Lava Pirate"

            CFrameMon = CFrame.new(-5270, 42, -4800)
            VectorMon = Vector3.new(-5270, 42, -4800)

            CFrameQuest = CFrame.new(-5430, 16, -5295)
            VectorQuest = Vector3.new(-5430, 16, -5296)
        elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
            Ms = "Ship Deckhand [Lv. 1250]"
            NameQuest = "ShipQuest1"

            LevelQuest = 1
            NameMon = "Ship Deckhand"

            CFrameMon = CFrame.new(1198, 126, 33031)
            VectorMon = Vector3.new(1198, 126, 33031)

            CFrameQuest = CFrame.new(1038, 125, 32913)
            VectorQuest = Vector3.new(1038, 125, 32913)
        elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
            Ms = "Ship Engineer [Lv. 1275]"
            NameQuest = "ShipQuest1"

            LevelQuest = 2
            NameMon = "Ship Engineer"

            CFrameMon = CFrame.new(918, 44, 32787)
            VectorMon = Vector3.new(918, 44, 32787)

            CFrameQuest = CFrame.new(1038, 125, 32913)
            VectorQuest = Vector3.new(1038, 125, 32913)
        elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
            Ms = "Ship Steward [Lv. 1300]"
            NameQuest = "ShipQuest2"

            LevelQuest = 1
            NameMon = "Ship Steward"

            CFrameMon = CFrame.new(915, 130, 33419)
            VectorMon = Vector3.new(915, 130, 33419)

            CFrameQuest = CFrame.new(969, 125, 33245)
            VectorQuest = Vector3.new(969, 125, 33245)
        elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
            Ms = "Ship Officer [Lv. 1325]"
            NameQuest = "ShipQuest2"

            LevelQuest = 2
            NameMon = "Ship Officer"

            CFrameMon = CFrame.new(916, 181, 33335)
            VectorMon = Vector3.new(916, 181, 33335)

            CFrameQuest = CFrame.new(969, 125, 33245)
            VectorQuest = Vector3.new(969, 125, 33245)
        elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
            Ms = "Arctic Warrior [Lv. 1350]"
            NameQuest = "FrostQuest"

            LevelQuest = 1
            NameMon = "Arctic Warrior"

            CFrameMon = CFrame.new(6038, 29, -6231)
            VectorMon = Vector3.new(6038, 29, -6231)

            VectorQuest = Vector3.new(5669, 28, -6482)
            CFrameQuest = CFrame.new(5669, 28, -6482)
        elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
            Ms = "Snow Lurker [Lv. 1375]"
            NameQuest = "FrostQuest"

            LevelQuest = 2
            NameMon = "Snow Lurker"

            CFrameMon = CFrame.new(5560, 42, -6826)
            VectorMon = Vector3.new(5560, 42, -6826)

            VectorQuest = Vector3.new(5669, 28, -6482)
            CFrameQuest = CFrame.new(5669, 28, -6482)
        elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
            Ms = "Sea Soldier [Lv. 1425]"
            NameQuest = "ForgottenQuest"

            LevelQuest = 1
            NameMon = "Sea Soldier"

            CFrameMon = CFrame.new(-3022, 16, -9722)
            VectorMon = Vector3.new(-3022, 16, -9722)

            CFrameQuest = CFrame.new(-3054, 237, -10148)
            VectorQuest = Vector3.new(-3054, 237, -10148)
        elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
            Ms = "Water Fighter [Lv. 1450]"
            NameQuest = "ForgottenQuest"

            LevelQuest = 2
            NameMon = "Water Fighter"

            CFrameMon = CFrame.new(-3385, 239, -10542)
            VectorMon = Vector3.new(-3385, 239, -10542)

            CFrameQuest = CFrame.new(-3054, 237, -10148)
            VectorQuest = Vector3.new(-3054, 237, -10148)
        end
    end
    if ThreeWorld then
        if MyLevel == 1500 or MyLevel <= 1524 then
            Ms = "Pirate Millionaire [Lv. 1500]"
            NameQuest = "PiratePortQuest"

            LevelQuest = 1
            NameMon = "Pirate"

            CFrameMon = CFrame.new(-373, 75, 5550)
            VectorMon = Vector3.new(-373, 75, 5550)
                
            CFrameQuest = CFrame.new(-288, 44, 5576)
            VectorQuest = Vector3.new(-288, 44, 5576)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            Ms = "Pistol Billionaire [Lv. 1525]"
            NameQuest = "PiratePortQuest"

            LevelQuest = 2
            NameMon = "Pistol"

            CFrameMon = CFrame.new(-469, 74, 5904)
            VectorMon = Vector3.new(-469, 74, 5904)
            
            CFrameQuest = CFrame.new(-288, 44, 5576)
            VectorQuest = Vector3.new(-288, 44, 5576)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            Ms = "Dragon Crew Warrior [Lv. 1575]"
            NameQuest = "AmazonQuest"

            LevelQuest = 1
            NameMon = "Warrior"

            CFrameMon = CFrame.new(6339, 52, -1213)
            VectorMon = Vector3.new(6338, 52, -1213)

            CFrameQuest = CFrame.new(5835, 52, -1105)
            VectorQuest = Vector3.new(5835, 52, -1105)
        elseif MyLevel == 1600 or MyLevel <= 1624 then
            Ms = "Dragon Crew Archer [Lv. 1600]"
            NameQuest = "AmazonQuest"

            LevelQuest = 2
            NameMon = "Archer"

            CFrameMon = CFrame.new(6594, 383, 139)
            VectorMon = Vector3.new(6594, 383, 139)

            CFrameQuest = CFrame.new(5835, 52, -1105)
            VectorQuest = Vector3.new(5835, 52, -1105)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            Ms = "Female Islander [Lv. 1625]"
            NameQuest = "AmazonQuest2"

            LevelQuest = 1
            NameMon = "Female"

            CFrameMon = CFrame.new(5308, 819, 1047)
            VectorMon = Vector3.new(5308, 819, 1047)

            CFrameQuest = CFrame.new(5443, 602, 751)
            VectorQuest = Vector3.new(5443, 602, 751)
        elseif MyLevel == 1650 or MyLevel <= 1699 then
            Ms = "Giant Islander [Lv. 1650]"
            NameQuest = "AmazonQuest2"

            LevelQuest = 2
            NameMon = "Giant Islanders"

            CFrameMon = CFrame.new(4951, 602, -68)
            VectorMon = Vector3.new(4951, 602, -68)

            CFrameQuest = CFrame.new(5443, 602, 751)
            VectorQuest = Vector3.new(5443, 602, 751)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            Ms = "Marine Commodore [Lv. 1700]"
            NameQuest = "MarineTreeIsland"

            LevelQuest = 1
            NameMon = "Marine Commodore"

            CFrameMon = CFrame.new(2447, 73, -7470)
            VectorMon = Vector3.new(2447, 73, -7470)

            CFrameQuest = CFrame.new(2180, 29, -6737)
            VectorQuest = Vector3.new(2180, 29, -6737)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            Ms = "Marine Rear Admiral [Lv. 1725]"
            NameQuest = "MarineTreeIsland"

            LevelQuest = 2
            NameMon = "Marine Rear Admiral"

            CFrameMon = CFrame.new(3671, 161, -6932)
            VectorMon = Vector3.new(3671, 161, -6932)

            CFrameQuest = CFrame.new(2180, 29, -6737)
            VectorQuest = Vector3.new(2180, 29, -6737)
        elseif MyLevel == 1775 or MyLevel <= 1800 then
            Ms = "Fishman Raider [Lv. 1775]"
            NameQuest = "DeepForestIsland3"

            LevelQuest = 1
            NameMon = "Fishman Raider"

            CFrameMon = CFrame.new(-10560, 332, -8466)
            VectorMon = Vector3.new(-10560, 332, -8466)

            CFrameQuest = CFrame.new(-10584, 332, -8758)
            VectorQuest = Vector3.new(-10584, 332, -8758)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            Ms = "Fishman Captain [Lv. 1800]"
            NameQuest = "DeepForestIsland3"

            LevelQuest = 2
            NameMon = "Fishman Captain"

            CFrameMon = CFrame.new(-10993, 332, -8940)
            VectorMon = Vector3.new(-10993, 332, -8940)

            CFrameQuest = CFrame.new(-10584, 332, -8758)
            VectorQuest = Vector3.new(-10584, 332, -8758)
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            Ms = "Forest Pirate [Lv. 1825]"
            NameQuest = "DeepForestIsland"

            LevelQuest = 1
            NameMon = "Forest Pirate"

            CFrameMon = CFrame.new(-13479, 333, -7905)
            VectorMon = Vector3.new(-13479, 333, -7905)

            CFrameQuest = CFrame.new(-13232, 333, -7627)
            VectorQuest = Vector3.new(-13232, 333, -7627)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            Ms = "Mythological Pirate [Lv. 1850]"
            NameQuest = "DeepForestIsland"

            LevelQuest = 2
            NameMon = "Mythological Pirate"

            CFrameMon = CFrame.new(-13545, 470, -6917)
            VectorMon = Vector3.new(-13545, 470, -6917)

            CFrameQuest = CFrame.new(-13232, 333, -7627)
            VectorQuest = Vector3.new(-13232, 333, -7627)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            Ms = "Jungle Pirate [Lv. 1900]"
            NameQuest = "DeepForestIsland2"

            LevelQuest = 1
            NameMon = "Jungle Pirate"

            CFrameMon = CFrame.new(-12107, 332, -10549)
            VectorMon = Vector3.new(-12106, 332, -10549)

            CFrameQuest = CFrame.new(-12684, 391, -9902)
            VectorQuest = Vector3.new(-12684, 391, -9902)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            Ms = "Musketeer Pirate [Lv. 1925]"
            NameQuest = "DeepForestIsland2"

            LevelQuest = 2
            NameMon = "Musketeer Pirate"

            CFrameMon = CFrame.new(-13286, 392, -9769)
            VectorMon = Vector3.new(-13286, 392, -9768)

            CFrameQuest = CFrame.new(-12684, 391, -9902)
            VectorQuest = Vector3.new(-12684, 391, -9902)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            Ms = "Reborn Skeleton [Lv. 1975]"
            NameQuest = "HauntedQuest1"

            LevelQuest = 1
            NameMon = "Reborn Skeleton"

            CFrameMon = CFrame.new(-8760, 142, 6039)
            VectorMon = Vector3.new(-8760, 142, 6039)

            CFrameQuest = CFrame.new(-9482, 142, 5567)
            VectorQuest = Vector3.new(-9482, 142, 5567)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            Ms = "Living Zombie [Lv. 2000]"
            NameQuest = "HauntedQuest1"

            LevelQuest = 2
            NameMon = "Living Zombie"

            CFrameMon = CFrame.new(-10144, 140, 5932)
            VectorMon = Vector3.new(-10144, 140, 5932)

            CFrameQuest = CFrame.new(-9482, 142, 5567)
            VectorQuest = Vector3.new(-9482, 142, 5567)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            Ms = "Demonic Soul [Lv. 2025]"
            NameQuest = "HauntedQuest2"

            LevelQuest = 1
            NameMon = "Demonic Soul"

            CFrameMon = CFrame.new(-9507, 172, 6158)
            VectorMon = Vector3.new(-9506, 172, 6158)

            CFrameQuest = CFrame.new(-9513, 172, 6079)
            VectorQuest = Vector3.new(-9513, 172, 6079)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            Ms = "Posessed Mummy [Lv. 2050]"
            NameQuest = "HauntedQuest2"

            LevelQuest = 2
            NameMon = "Posessed Mummy"

            CFrameMon = CFrame.new(-9577, 6, 6223)
            VectorMon = Vector3.new(-9577, 6, 6223)

            CFrameQuest = CFrame.new(-9513, 172, 6079)
            VectorQuest = Vector3.new(-9513, 172, 6079)

        elseif MyLevel == 2075 or MyLevel <= 2099 then
            Ms = "Peanut Scout [Lv. 2075]"
            NameQuest = "NutsIslandQuest"

            LevelQuest = 1
            NameMon = "Peanut Scout"

            CFrameMon = CFrame.new(-2124, 123, -10435)
            VectorMon = Vector3.new(-2124, 123, -10435)

            CFrameQuest = CFrame.new(-2104, 38, -10192)
            VectorQuest = Vector3.new(-2104, 38, -10192)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            Ms = "Peanut President [Lv. 2100]"
            NameQuest = "NutsIslandQuest"

            LevelQuest = 2
            NameMon = "Peanut President"

            CFrameMon = CFrame.new(-2124, 123, -10435)
            VectorMon = Vector3.new(-2124, 123, -10435)

            CFrameQuest = CFrame.new(-2104, 38, -10192)
            VectorQuest = Vector3.new(-2104, 38, -10192)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            Ms = "Ice Cream Chef [Lv. 2125]"
            NameQuest = "IceCreamIslandQuest"

            LevelQuest = 1
            NameMon = "Ice Cream Chef"

            CFrameMon = CFrame.new(-641, 127, -11062)
            VectorMon = Vector3.new(-641, 127, -11062)

            CFrameQuest = CFrame.new(-822, 66, -10965)
            VectorQuest = Vector3.new(-822, 66, -10965)
        elseif MyLevel >= 2150 then
            Ms = "Ice Cream Commander [Lv. 2150]"
            NameQuest = "IceCreamIslandQuest"

            LevelQuest = 2
            NameMon = "Ice Cream Commander"

            CFrameMon = CFrame.new(-641, 127, -11062)
            VectorMon = Vector3.new(-641, 127, -11062)

            CFrameQuest = CFrame.new(-822, 66, -10965)
            VectorQuest = Vector3.new(-822, 66, -10965)
        end
    end
end
CheckQuest()

SelectBoss = ""
function CheckQuestBoss()
    -- Old World
    if SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
        MsBoss = "Saber Expert [Lv. 200] [Boss]"
        NameQuestBoss = ""
        LevelQuestBoss = 3
        NameBoss = ""
        CFrameQuestBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
        CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
    elseif SelectBoss == "The Saw [Lv. 100] [Boss]" then
        MsBoss = "The Saw [Lv. 100] [Boss]"
        NameQuestBoss = ""
        LevelQuestBoss = 3
        NameBoss = ""
        CFrameQuestBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854)
        CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
    elseif SelectBoss == "Greybeard [Lv. 750] [Raid Boss]" then
        MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
        NameQuestBoss = ""
        LevelQuestBoss = 3
        NameBoss = ""
        CFrameQuestBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666)
        CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
    elseif SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
        MsBoss = "Mob Leader [Lv. 120] [Boss]"
        NameQuestBoss = ""
        LevelQuestBoss = 3
        NameBoss = ""
        CFrameQuestBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043)
        CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
    
    elseif SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
        MsBoss = "The Gorilla King [Lv. 25] [Boss]"
        NameQuestBoss = "JungleQuest"
        LevelQuestBoss = 3
        NameBoss = "The Gorilla King"
        CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
        CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
    elseif SelectBoss == "Bobby [Lv. 55] [Boss]" then
        MsBoss = "Bobby [Lv. 55] [Boss]"
        NameQuestBoss = "BuggyQuest1"
        LevelQuestBoss = 3
        NameBoss = "Bobby"
        CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
        CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
    elseif SelectBoss == "Yeti [Lv. 110] [Boss]" then
        MsBoss = "Yeti [Lv. 110] [Boss]"
        NameQuestBoss = "SnowQuest"
        LevelQuestBoss = 3
        NameBoss = "Yeti"
        CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
        CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
    elseif SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
        MsBoss = "Vice Admiral [Lv. 130] [Boss]"
        NameQuestBoss = "MarineQuest2"
        LevelQuestBoss = 2
        NameBoss = "Vice Admiral"
        CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
        CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
    elseif SelectBoss == "Warden [Lv. 175] [Boss]" then
        MsBoss = "Warden [Lv. 175] [Boss]"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 1
        NameBoss = "Warden"
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif SelectBoss == "Chief Warden [Lv. 200] [Boss]" then
        MsBoss = "Chief Warden [Lv. 200] [Boss]"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 2
        NameBoss = "Chief Warden"
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif SelectBoss == "Swan [Lv. 225] [Boss]" then
        MsBoss = "Swan [Lv. 225] [Boss]"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 3
        NameBoss = "Swan"
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
    elseif SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
        MsBoss = "Magma Admiral [Lv. 350] [Boss]"
        NameQuestBoss = "MagmaQuest"
        LevelQuestBoss = 3
        NameBoss = "Magma Admiral"
        CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
        CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
    elseif SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
        MsBoss = "Fishman Lord [Lv. 425] [Boss]"
        NameQuestBoss = "FishmanQuest"
        LevelQuestBoss = 3
        NameBoss = "Fishman Lord"
        CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
        CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
    elseif SelectBoss == "Wysper [Lv. 500] [Boss]" then
        MsBoss = "Wysper [Lv. 500] [Boss]"
        NameQuestBoss = "SkyExp1Quest"
        LevelQuestBoss = 3
        NameBoss = "Wysper"
        CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
        CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
    elseif SelectBoss == "Thunder God [Lv. 575] [Boss]" then
        MsBoss = "Thunder God [Lv. 575] [Boss]"
        NameQuestBoss = "SkyExp2Quest"
        LevelQuestBoss = 3
        NameBoss = "Thunder God"
        CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
        CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
    elseif SelectBoss == "Cyborg [Lv. 675] [Boss]" then
        MsBoss = "Cyborg [Lv. 675] [Boss]"
        NameQuestBoss = "FountainQuest"
        LevelQuestBoss = 3
        NameBoss = "Cyborg"
        CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
        CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
    
        -- New World
    elseif SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
        MsBoss = "Don Swan [Lv. 1000] [Boss]"
        NameQuestBoss = ""
        LevelQuestBoss = 3
        NameBoss = "Don Swan"
        CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
    
    elseif SelectBoss == "Diamond [Lv. 750] [Boss]" then
        MsBoss = "Diamond [Lv. 750] [Boss]"
        NameQuestBoss = "Area1Quest"
        LevelQuestBoss = 3
        NameBoss = "Diamond"
        CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
        CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
    elseif SelectBoss == "Jeremy [Lv. 850] [Boss]" then
        MsBoss = "Jeremy [Lv. 850] [Boss]"
        NameQuestBoss = "Area2Quest"
        LevelQuestBoss = 3
        NameBoss = "Jeremy"
        CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
        CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
    elseif SelectBoss == "Fajita [Lv. 925] [Boss]" then
        MsBoss = "Fajita [Lv. 925] [Boss]"
        NameQuestBoss = "MarineQuest3"
        LevelQuestBoss = 3
        NameBoss = "Fajita"
        CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
        CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
    elseif SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
        MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
        NameQuestBoss = "IceSideQuest"
        LevelQuestBoss = 3
        NameBoss = "Smoke Admiral"
        CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
        CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
    elseif SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
        MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
        NameQuestBoss = "FrostQuest"
        LevelQuestBoss = 3
        NameBoss = "Awakened Ice Admiral"
        CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
        CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
    elseif SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
        MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
        NameQuestBoss = "ForgottenQuest"             
        LevelQuestBoss = 3
        NameBoss = "Tide Keeper"
        CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
        CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
    
    elseif SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
        MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
        NameQuestBoss = ""
        LevelQuestBoss = 3
        NameBoss = "Cursed Captain"
        CFrameQuestBoss = CFrame.new(916.928589, 181.092773, 33422)
        CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
    elseif SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
        MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
        NameQuestBoss = ""
        LevelQuestBoss = 3
        NameBoss = "Darkbeard"
        CFrameQuestBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777)
        CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
    elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
        MsBoss = "Order [Lv. 1250] [Raid Boss]"
        NameQuestBoss = ""
        LevelQuestBoss = 3
        NameBoss = "Order"
        CFrameQuestBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584)
        CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
    
        -- Thire World
    elseif SelectBoss == "Stone [Lv. 1550] [Boss]" then
        MsBoss = "Stone [Lv. 1550] [Boss]"
        NameQuestBoss = "PiratePortQuest"             
        LevelQuestBoss = 3
        NameBoss = "Stone"
        CFrameQuestBoss = CFrame.new(-290, 44, 5577)
        CFrameBoss = CFrame.new(-1085, 40, 6779)
    elseif SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
        MsBoss = "Island Empress [Lv. 1675] [Boss]"
        NameQuestBoss = "AmazonQuest2"             
        LevelQuestBoss = 3
        NameBoss = "Island Empress"
        CFrameQuestBoss = CFrame.new(5443, 602, 752)
        CFrameBoss = CFrame.new(5659, 602, 244)
    elseif SelectBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
        MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
        NameQuestBoss = "MarineTreeIsland"             
        LevelQuestBoss = 3
        NameBoss = "Kilo Admiral"
        CFrameQuestBoss = CFrame.new(2178, 29, -6737)
        CFrameBoss =CFrame.new(2846, 433, -7100)
    elseif SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
        MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
        NameQuestBoss = "DeepForestIsland"             
        LevelQuestBoss = 3
        NameBoss = "Captain Elephant"
        CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
        CFrameBoss = CFrame.new(-13221, 325, -8405)
    elseif SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
        MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
        NameQuestBoss = "DeepForestIsland2"             
        LevelQuestBoss = 3
        NameBoss = "Beautiful Pirate"
        CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
        CFrameBoss = CFrame.new(5182, 23, -20)
    elseif SelectBoss == "Cake Queen [Lv. 2175] [Boss]" then
        MsBoss = "Cake Queen [Lv. 2175] [Boss]"
        NameQuestBoss = "IceCreamIslandQuest"             
        LevelQuestBoss = 3
        NameBoss = "Cake Queen"
        CFrameQuestBoss = CFrame.new(-716, 382, -11010)
        CFrameBoss = CFrame.new(-821, 66, -10965)

    elseif SelectBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
        MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
        LevelQuestBoss = 3
        NameQuestBoss = ""
        NameBoss = "rip_indra True Form"
        CFrameQuestBoss = CFrame.new(-5359, 424, -2735)
        CFrameBoss = CFrame.new(-5359, 424, -2735)
    elseif SelectBoss == "Longma [Lv. 2000] [Boss]" then
        MsBoss = "Longma [Lv. 2000] [Boss]"

        LevelQuestBoss = 3
        NameQuestBoss = ""
        NameBoss = "Longma"

        CFrameQuestBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
        CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
    elseif SelectBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
        MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
        LevelQuestBoss = 3
        NameQuestBoss = ""
        NameBoss = "Soul Reaper"
        CFrameQuestBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
        CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
    end
end
CheckQuestBoss()

do -- Init
    task = task or getrenv().task;
    fastSpawn,fastWait,delay = task.spawn,task.wait,task.delay
end

function toTarget(targetPos, targetCFrame)
    local tweenfunc = {}
    Distance = (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
    if Distance < 1000 then
        Speed = 325
    elseif Distance >= 1000 then
        Speed = 310
    end

    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
    local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
    tween:Play()

    function tweenfunc:Stop()
        tween:Cancel()
    end 

    if StatsBypass == "Bypassed" and UseTP then
        tween:Cancel()
        game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"].CFrame = targetCFrame
    end
    if not tween then return tween end
    return tweenfunc
end

game.Players.LocalPlayer.CharacterAdded:Connect(function()
    StatsBypass = "NoBypassTP"
end)
spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
                if StatsBypass == "Bypassing" or StatsBypass == "Bypassed" then
                    game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(15, false)
                else
                    game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(15, true)
                end
            end
        end)
    end
end)

function Click()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):ClickButton1(Vector2.new(-1,1))
end

function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.4)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end      

-- Get Weapon Gun
spawn(function()
    while wait() do
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if v:IsA("Tool") then
                if v:FindFirstChild("RemoteFunctionShoot") then 
                    SelectToolWeaponGun = v.Name
                end
            end
        end
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
            if v:IsA("Tool") then
                if v:FindFirstChild("RemoteFunctionShoot") then 
                    SelectToolWeaponGun = v.Name
                end
            end
        end
    end
end)

spawn(function()
    while wait() do
        if sethiddenproperty then
            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",99999999999)
        end 
        if setscriptable then
            setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
            game.Players.LocalPlayer.SimulationRadius = math.huge * math.huge, math.huge * math.huge * 1 / 0 * 1 / 0 * 1 / 0 * 1 / 0 * 1 / 0
        end
    end
end)

function TP(P)
    NoClip = true
	Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance < 10 then
		Speed = 1000
	elseif Distance < 170 then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
		Speed = 350
	elseif Distance < 1000 then
		Speed = 350
	elseif Distance >= 1000 then
		Speed = 250
	end
	game:GetService("TweenService"):Create(
		game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
		{CFrame = P}
	):Play()
    NoClip = false
end

local RigC = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
local CameraShakeInstanceSet = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.CameraShaker.CameraShakeInstance)
function AutoFarm(NameMonster,RemoteQuestGet,LevelQuestGet,TextQuestName,WaitMonSpawnCFrame,NPCQuestCFrame,FarmMode)
    local AutoFarmfunc = {}

    function AutoFarmfunc:Update(NewNameMonster,NewRemoteQuestGet,NewLevelQuestGet,NewTextQuestName,NewWaitMonSpawnCFrame,NewNPCQuestCFrame)
        NameMonster = NewNameMonster
        RemoteQuestGet = NewRemoteQuestGet
        LevelQuestGet = NewLevelQuestGet
        TextQuestName = NewTextQuestName
        WaitMonSpawnCFrame = NewWaitMonSpawnCFrame
        NPCQuestCFrame = NewNPCQuestCFrame
    end
    function AutoFarmfunc:UpdateFarmMode(NewFarmMode)
        FarmMode = NewFarmMode
    end
    function AutoFarmfunc:Start()
        farm = true
    end
    function AutoFarmfunc:Stop()
        farm = false
    end

    spawn(function()
        while true do
            if farm then
                if FarmMode == "AutoFarmLevel" then
                    if StatsBypass == "Bypassed" and UseTP then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            Usefastattack = false
                            StartMagnetAutoFarmLevel= false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                            wait(1)
                            local string_1 = "StartQuest";
                            local string_2 = NameQuest;
                            local number_1 = LevelQuest;
                            local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                            Target:InvokeServer(string_1, string_2, number_1);
                            local string_1 = "SetSpawnPoint";
                            local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                            Target:InvokeServer(string_1);
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if farm and v.Name == Ms and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat wait()
                                                EquipWeapon(SelectToolWeapon)
                                                if Farmtween then Farmtween:Stop() end
                                                if Modstween then Modstween:Stop() end
                                                PosMon = v.HumanoidRootPart.CFrame
                                                StartMagnetAutoFarmLevel= true
                                                Usefastattack = true
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    local args = {
                                                        [1] = "Buso"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                                if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                                    local vim = game:service('VirtualInputManager')
                                                    vim:SendKeyEvent(true, "V", false, game)
                                                    vim:SendKeyEvent(false, "V", false, game)
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                                Click()
                                            until StatsBypass ~= "Bypassed" or not farm or not v.Parent or v.Humanoid.Health <= 0 or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                            end
                                            Usefastattack = false
                                            StartMagnetAutoFarmLevel= false
                                        else
                                            game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                        end 
                                    end
                                end
                            else
                                if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                    game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                end
                                Usefastattack = false
                                StartMagnetAutoFarmLevel= false
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                            end
                        end
                    elseif not UseTP then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            Usefastattack = false
                            StartMagnetAutoFarmLevel= false
                            Questtween = toTarget(NPCQuestCFrame.Position,NPCQuestCFrame) wait(.1)
                            if OldWorld and (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                if Questtween then Questtween:Stop() end
                                local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Entrance
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif OldWorld and not (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                if Questtween then Questtween:Stop() end
                                wait(.1)
                                if game.Players.LocalPlayer.Data.Level.Value == 450 or game.Players.LocalPlayer.Data.Level.Value <= 474 then
                                    local TouchInterest = game:GetService("Workspace").Map.SkyArea2.PathwayHouse.Exit
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                else
                                    local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Exit
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                end
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif OldWorld and Ms == "God's Guard [Lv. 450]" and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 15000 then
                                if Questtween then Questtween:Stop() end
                                wait(.1)
                                local TouchInterest = game:GetService("Workspace").Map.SkyArea2.PathwayHouse.Exit
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                wait(.5)
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif OldWorld and (Ms == "Galley Captain [Lv. 650]" or Ms == "Galley Pirate [Lv. 625]") and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 10000 then
                                if Questtween then Questtween:Stop() end
                                wait(.1)
                                local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Exit
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif NewWorld and string.find(Ms, "Ship") and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                if Questtween then Questtween:Stop() end
                                local TouchInterest = game:GetService("Workspace").Map.GhostShip.Teleport
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                wait(.5)
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif NewWorld and not string.find(Ms, "Ship") and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                if Questtween then Questtween:Stop() end
                                local TouchInterest = game:GetService("Workspace").Map.GhostShipInterior.Teleport
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                wait(.5)
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif (NPCQuestCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                if Questtween then Questtween:Stop() end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                wait(1)
                                local string_1 = "StartQuest";
                                local string_2 = NameQuest;
                                local number_1 = LevelQuest;
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, string_2, number_1);
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                            end 
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if farm and v.Name == Ms and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat wait()
                                                    Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                    if OldWorld and (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                                        if Farmtween then Farmtween:Stop() end
                                                        if Modstween then Modstween:Stop() end
                                                        local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Entrance
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                                        local string_1 = "SetSpawnPoint";
                                                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                        Target:InvokeServer(string_1);
                                                        -- UseTween = false
                                                    elseif OldWorld and not (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                                        if Farmtween then Farmtween:Stop() end
                                                        if Modstween then Modstween:Stop() end
                                                        local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Exit
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                                        local string_1 = "SetSpawnPoint";
                                                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                        Target:InvokeServer(string_1);
                                                        -- UseTween = false
                                                    elseif OldWorld and Ms == "God's Guard [Lv. 450]" and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 15000 then
                                                        if Questtween then Questtween:Stop() end
                                                        wait(.1)
                                                        local TouchInterest = game:GetService("Workspace").Map.SkyArea2.PathwayHouse.Exit
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                                        wait(.5)
                                                        local string_1 = "SetSpawnPoint";
                                                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                        Target:InvokeServer(string_1);
                                                        -- -- UseTween = false = false
                                                    elseif NewWorld and string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                                        if Farmtween then Farmtween:Stop() end
                                                        if Modstween then Modstween:Stop() end
                                                        local TouchInterest = game:GetService("Workspace").Map.GhostShip.Teleport
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                                        wait(.5)
                                                        local string_1 = "SetSpawnPoint";
                                                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                        Target:InvokeServer(string_1);
                                                        -- UseTween = false
                                                    elseif NewWorld and not string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                                        if Farmtween then Farmtween:Stop() end
                                                        if Modstween then Modstween:Stop() end
                                                        local TouchInterest = game:GetService("Workspace").Map.GhostShipInterior.Teleport
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                                        wait(.5)
                                                        local string_1 = "SetSpawnPoint";
                                                        local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                        Target:InvokeServer(string_1);
                                                        -- UseTween = false
                                                    elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                                        EquipWeapon(SelectToolWeapon)
                                                        if Farmtween then Farmtween:Stop() end
                                                        if Modstween then Modstween:Stop() end
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        StartMagnetAutoFarmLevel= true
                                                        Usefastattack = true
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                            local args = {
                                                                [1] = "Buso"
                                                            }
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                        end
                                                        if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                                                            local vim = game:service('VirtualInputManager')
                                                            vim:SendKeyEvent(true, "V", false, game)
                                                            vim:SendKeyEvent(false, "V", false, game)
                                                        end
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                                        Click()
                                                    end
                                            until not farm or not v.Parent or v.Humanoid.Health <= 0 or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                            end
                                            Usefastattack = false
                                            StartMagnetAutoFarmLevel= false
                                        else
                                            game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                        end 
                                    end
                                end
                            else
                                if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                    game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                end
                                Usefastattack = false
                                StartMagnetAutoFarmLevel= false
                                Modstween = toTarget(CFrameMon.Position,CFrameMon)
                                if OldWorld and (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                    if Modstween then Modstween:Stop() end
                                    local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Entrance
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                    -- UseTween = false
                                elseif OldWorld and not (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                    if Modstween then Modstween:Stop() end
                                    local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Exit
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                    -- UseTween = false
                                elseif OldWorld and Ms == "God's Guard [Lv. 450]" and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 15000 then
                                    if Questtween then Questtween:Stop() end
                                    wait(.1)
                                    local TouchInterest = game:GetService("Workspace").Map.SkyArea2.PathwayHouse.Exit
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                    wait(.5)
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                    -- -- UseTween = false = false
                                elseif NewWorld and string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                    if Modstween then Modstween:Stop() end
                                    local TouchInterest = game:GetService("Workspace").Map.GhostShip.Teleport
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                    wait(.5)
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                    -- UseTween = false
                                elseif NewWorld and not string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                    if Modstween then Modstween:Stop() end
                                    local TouchInterest = game:GetService("Workspace").Map.GhostShipInterior.Teleport
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                    wait(.5)
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                    -- UseTween = false    
                                elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                    if Modstween then Modstween:Stop() end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                end 
                            end
                        end
                    else
                        if game:GetService("Players").LocalPlayer.Data.Stats.Defense.Level.Value == 1 then
                            if StatsBypass == "NoBypassTP" then
                                StatsBypass = "Bypassing"
                            end
                            wait(.5)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") and StatsBypass == "Bypassing" then
                                if game.Players.LocalPlayer.PlayerGui.Main.HP.TextLabel.Text == "Health 100/100" then
                                    repeat wait()
                                        if OldWorld then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
                                                TP(game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            else
                                                TP(game:GetService("ReplicatedStorage"):FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            end
                                        elseif NewWorld then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain [Lv. 900]") then
                                                TP(game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain [Lv. 900]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            else
                                                TP(game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain [Lv. 900]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            end
                                        elseif ThreeWorld then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Marine Commodore [Lv. 1700]") then
                                                TP(game:GetService("Workspace").Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            else
                                                TP(game:GetService("ReplicatedStorage"):FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            end
                                        end
                                        wait(2)
                                    until game.Players.LocalPlayer.PlayerGui.Main.HP.TextLabel.Text ~= "Health 100/100"
                                    StatsBypass = "Bypassed"
                                end
                            end
                        end
                    end
                elseif FarmMode == "AutoFarmGun" then
                    if StatsBypass == "Bypassed" and UseTP then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            Usefastattack = false
                            StartMagnetAutoFarmLevel= false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                            wait(1)
                            local string_1 = "StartQuest";
                            local string_2 = NameQuest;
                            local number_1 = LevelQuest;
                            local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                            Target:InvokeServer(string_1, string_2, number_1);
                            local string_1 = "SetSpawnPoint";
                            local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                            Target:InvokeServer(string_1);
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if farm and v.Name == Ms and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat wait()
                                                EquipWeapon(SelectToolWeapon)
                                                if Farmtween then Farmtween:Stop() end
                                                if Modstween then Modstween:Stop() end
                                                PosMon = v.HumanoidRootPart.CFrame
                                                StartMagnetAutoFarmLevel= true
                                                Usefastattack = true
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    local args = {
                                                        [1] = "Buso"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end

                                                HealthMin = v.Humanoid.MaxHealth*Persen/100
                                                PosMonGun = v.HumanoidRootPart.CFrame
                                                if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                    EquipWeapon(SelectToolWeaponGun)
                                                    -- v.HumanoidRootPart.CanCollide = false
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun):FindFirstChild("RemoteFunctionShoot") then
                                                        tool = game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun]
                                                        v17 = workspace:FindPartOnRayWithIgnoreList(Ray.new(tool.Handle.CFrame.p, (v.HumanoidRootPart.Position - tool.Handle.CFrame.p).unit * 100), { game.Players.LocalPlayer.Character, workspace._WorldOrigin });
                                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun).RemoteFunctionShoot:InvokeServer(v.HumanoidRootPart.Position, (ReplicatedStorage_Util.Other.hrpFromPart(v17)));
                                                    end 
                                                else
                                                    EquipWeapon(SelectToolWeapon)
                                                    Usefastattack = true
                                                    PosMonGun = v.HumanoidRootPart.CFrame
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 30)
                                                    Click()
                                                    StartMagnetAutoFarmLevel = true
                                                end
                                            until StatsBypass ~= "Bypassed" or not farm or not v.Parent or v.Humanoid.Health <= 0 or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                            end
                                            Usefastattack = false
                                            StartMagnetAutoFarmLevel= false
                                        else
                                            game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                        end 
                                    end
                                end
                            else
                                if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                    game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                end
                                Usefastattack = false
                                StartMagnetAutoFarmLevel= false
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                            end
                        end
                    elseif not UseTP then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            Usefastattack = false
                            StartMagnetAutoFarmLevel= false
                            Questtween = toTarget(NPCQuestCFrame.Position,NPCQuestCFrame) wait(.1)
                            if OldWorld and (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                if Questtween then Questtween:Stop() end
                                local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Entrance
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif OldWorld and not (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                if Questtween then Questtween:Stop() end
                                wait(.1)
                                if game.Players.LocalPlayer.Data.Level.Value == 450 or game.Players.LocalPlayer.Data.Level.Value <= 474 then
                                    local TouchInterest = game:GetService("Workspace").Map.SkyArea2.PathwayHouse.Exit
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                else
                                    local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Exit
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                end
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif OldWorld and Ms == "God's Guard [Lv. 450]" and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 15000 then
                                if Questtween then Questtween:Stop() end
                                wait(.1)
                                local TouchInterest = game:GetService("Workspace").Map.SkyArea2.PathwayHouse.Exit
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                wait(.5)
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif OldWorld and (Ms == "Galley Captain [Lv. 650]" or Ms == "Galley Pirate [Lv. 625]") and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 10000 then
                                if Questtween then Questtween:Stop() end
                                wait(.1)
                                local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Exit
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif NewWorld and string.find(Ms, "Ship") and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                if Questtween then Questtween:Stop() end
                                local TouchInterest = game:GetService("Workspace").Map.GhostShip.Teleport
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                wait(.5)
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif NewWorld and not string.find(Ms, "Ship") and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                if Questtween then Questtween:Stop() end
                                local TouchInterest = game:GetService("Workspace").Map.GhostShipInterior.Teleport
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                wait(.5)
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif (NPCQuestCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                if Questtween then Questtween:Stop() end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                wait(1)
                                local string_1 = "StartQuest";
                                local string_2 = NameQuest;
                                local number_1 = LevelQuest;
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, string_2, number_1);
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                            end 
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if farm and v.Name == Ms and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat wait()
                                                Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                if OldWorld and (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                                    if Farmtween then Farmtween:Stop() end
                                                    if Modstween then Modstween:Stop() end
                                                    local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Entrance
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                                    local string_1 = "SetSpawnPoint";
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1);
                                                    -- UseTween = false
                                                elseif OldWorld and not (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                                    if Farmtween then Farmtween:Stop() end
                                                    if Modstween then Modstween:Stop() end
                                                    local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Exit
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                                    local string_1 = "SetSpawnPoint";
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1);
                                                    -- UseTween = false
                                                elseif OldWorld and Ms == "God's Guard [Lv. 450]" and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 15000 then
                                                    if Questtween then Questtween:Stop() end
                                                    wait(.1)
                                                    local TouchInterest = game:GetService("Workspace").Map.SkyArea2.PathwayHouse.Exit
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                                    wait(.5)
                                                    local string_1 = "SetSpawnPoint";
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1);
                                                    -- -- UseTween = false = false
                                                elseif NewWorld and string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                                    if Farmtween then Farmtween:Stop() end
                                                    if Modstween then Modstween:Stop() end
                                                    local TouchInterest = game:GetService("Workspace").Map.GhostShip.Teleport
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                                    wait(.5)
                                                    local string_1 = "SetSpawnPoint";
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1);
                                                    -- UseTween = false
                                                elseif NewWorld and not string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                                    if Farmtween then Farmtween:Stop() end
                                                    if Modstween then Modstween:Stop() end
                                                    local TouchInterest = game:GetService("Workspace").Map.GhostShipInterior.Teleport
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                                    wait(.5)
                                                    local string_1 = "SetSpawnPoint";
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1);
                                                    -- UseTween = false
                                                elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                                    EquipWeapon(SelectToolWeapon)
                                                    if Farmtween then Farmtween:Stop() end
                                                    if Modstween then Modstween:Stop() end
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    StartMagnetAutoFarmLevel= true
                                                    Usefastattack = true
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        local args = {
                                                            [1] = "Buso"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    end
                                                    HealthMin = v.Humanoid.MaxHealth*Persen/100
                                                    PosMonGun = v.HumanoidRootPart.CFrame
                                                    if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                        EquipWeapon(SelectToolWeaponGun)
                                                        -- v.HumanoidRootPart.CanCollide = false
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun):FindFirstChild("RemoteFunctionShoot") then
                                                            tool = game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun]
                                                            v17 = workspace:FindPartOnRayWithIgnoreList(Ray.new(tool.Handle.CFrame.p, (v.HumanoidRootPart.Position - tool.Handle.CFrame.p).unit * 100), { game.Players.LocalPlayer.Character, workspace._WorldOrigin });
                                                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun).RemoteFunctionShoot:InvokeServer(v.HumanoidRootPart.Position, (ReplicatedStorage_Util.Other.hrpFromPart(v17)));
                                                        end 
                                                    else
                                                        EquipWeapon(SelectToolWeapon)
                                                        Usefastattack = true
                                                        PosMonGun = v.HumanoidRootPart.CFrame
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 30)
                                                        Click()
                                                        StartMagnetAutoFarmLevel = true
                                                    end
                                                end
                                            until not farm or not v.Parent or v.Humanoid.Health <= 0 or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                            end
                                            Usefastattack = false
                                            StartMagnetAutoFarmLevel= false
                                        else
                                            game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                        end 
                                    end
                                end
                            else
                                if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                    game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                end
                                Usefastattack = false
                                StartMagnetAutoFarmLevel= false
                                Modstween = toTarget(CFrameMon.Position,CFrameMon)
                                if OldWorld and (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                    if Modstween then Modstween:Stop() end
                                    local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Entrance
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                    -- UseTween = false
                                elseif OldWorld and not (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                    if Modstween then Modstween:Stop() end
                                    local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Exit
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                    -- UseTween = false
                                elseif OldWorld and Ms == "God's Guard [Lv. 450]" and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 15000 then
                                    if Questtween then Questtween:Stop() end
                                    wait(.1)
                                    local TouchInterest = game:GetService("Workspace").Map.SkyArea2.PathwayHouse.Exit
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                    wait(.5)
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                    -- -- UseTween = false = false
                                elseif NewWorld and string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                    if Modstween then Modstween:Stop() end
                                    local TouchInterest = game:GetService("Workspace").Map.GhostShip.Teleport
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                    wait(.5)
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                    -- UseTween = false
                                elseif NewWorld and not string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                    if Modstween then Modstween:Stop() end
                                    local TouchInterest = game:GetService("Workspace").Map.GhostShipInterior.Teleport
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                    wait(.5)
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                    -- UseTween = false    
                                elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                    if Modstween then Modstween:Stop() end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                end 
                            end
                        end
                    else
                        if game:GetService("Players").LocalPlayer.Data.Stats.Defense.Level.Value == 1 then
                            if StatsBypass == "NoBypassTP" then
                                StatsBypass = "Bypassing"
                            end
                            wait(.5)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") and StatsBypass == "Bypassing" then
                                if game.Players.LocalPlayer.PlayerGui.Main.HP.TextLabel.Text == "Health 100/100" then
                                    repeat wait()
                                        if OldWorld then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
                                                TP(game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            else
                                                TP(game:GetService("ReplicatedStorage"):FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            end
                                        elseif NewWorld then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain [Lv. 900]") then
                                                TP(game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain [Lv. 900]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            else
                                                TP(game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain [Lv. 900]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            end
                                        elseif ThreeWorld then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Marine Commodore [Lv. 1700]") then
                                                TP(game:GetService("Workspace").Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            else
                                                TP(game:GetService("ReplicatedStorage"):FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            end
                                        end
                                        wait(2)
                                    until game.Players.LocalPlayer.PlayerGui.Main.HP.TextLabel.Text ~= "Health 100/100"
                                    StatsBypass = "Bypassed"
                                end
                            end
                        end
                    end
                elseif FarmMode == "AutoFarmDevilfruit" then
                    if StatsBypass == "Bypassed" and UseTP then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            Usefastattack = false
                            StartMagnetAutoFarmLevel= false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                            wait(1)
                            local string_1 = "StartQuest";
                            local string_2 = NameQuest;
                            local number_1 = LevelQuest;
                            local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                            Target:InvokeServer(string_1, string_2, number_1);
                            local string_1 = "SetSpawnPoint";
                            local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                            Target:InvokeServer(string_1);
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if farm and v.Name == Ms and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat wait()
                                                EquipWeapon(SelectToolWeapon)
                                                if Farmtween then Farmtween:Stop() end
                                                if Modstween then Modstween:Stop() end
                                                PosMon = v.HumanoidRootPart.CFrame
                                                StartMagnetAutoFarmLevel= true
                                                Usefastattack = true
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    local args = {
                                                        [1] = "Buso"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end

                                                HealthMin = v.Humanoid.MaxHealth*Persen/100
                                                PosMon = v.HumanoidRootPart.CFrame
                                                if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                    Usefastattack = false
                                                    EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 10)
                                                    MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
                                                    DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
                                                    PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                    UseSkillMasteryDevilFruit = true

                                                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
                                                        if SkillZ and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
                                                            local args = {
                                                                [1] = v.HumanoidRootPart.Position
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteEvent:FireServer(unpack(args))
                                                            local args = {
                                                                [1] = "Z",
                                                                [2] = Vector3.new(0,0,0)
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteFunction:InvokeServer(unpack(args))
                                                            local vim = game:service'VirtualInputManager'
                                                            vim:SendKeyEvent(true, "Z", false, game)
                                                            vim:SendKeyEvent(false, "Z", false, game)
                                                        end
                                                        if SkillX and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                                            local args = {
                                                                [1] = v.HumanoidRootPart.Position
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteEvent:FireServer(unpack(args))
                                                            local args = {
                                                                [1] = "X"
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteFunction:InvokeServer(unpack(args))
                                                            local vim = game:service'VirtualInputManager'
                                                            vim:SendKeyEvent(true, "X", false, game)
                                                            vim:SendKeyEvent(false, "X", false, game)
                                                        end   
                                                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                                                        if SkillZ and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) then
                                                        else
                                                            local args = {
                                                                [1] = "Z",
                                                                [2] = Vector3.new(0,0,0)
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character["Human-Human: Buddha"].RemoteFunction:InvokeServer(unpack(args))
                                                            local vim = game:service'VirtualInputManager'
                                                            vim:SendKeyEvent(true, "Z", false, game)
                                                            vim:SendKeyEvent(false, "Z", false, game)
                                                        end
                                                        if SkillX and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                                            local args = {
                                                                [1] = v.HumanoidRootPart.Position
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                            local args = {
                                                                [1] = "X",
                                                                [2] = Vector3.new(0,0,0)
                                                            }
                                                            
                                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                                            local vim = game:service'VirtualInputManager'
                                                            vim:SendKeyEvent(true, "X", false, game)
                                                            vim:SendKeyEvent(false, "X", false, game)
                                                        end
                                                        if SkillC and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
                                                            local args = {
                                                                [1] = v.HumanoidRootPart.Position 
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                            local args = { 
                                                                [1] = "C",
                                                                [2] = Vector3.new(0,0,0)
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                                            local vim = game:service'VirtualInputManager'
                                                            vim:SendKeyEvent(true, "C", false, game)
                                                            vim:SendKeyEvent(false, "C", false, game)
                                                        end  
                                                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
                                                        if SkillZ and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
                                                            local args = {
                                                                [1] = v.HumanoidRootPart.Position
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                            local args = {
                                                                [1] = "Z",
                                                                [2] = Vector3.new(0,0,0)
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                                            local vim = game:service'VirtualInputManager'
                                                            vim:SendKeyEvent(true, "Z", false, game)
                                                            vim:SendKeyEvent(false, "Z", false, game)
                                                        end
                                                        if SkillX and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                                            local args = {
                                                                [1] = v.HumanoidRootPart.Position
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                            local args = {
                                                                [1] = "X",
                                                                [2] = Vector3.new(0,0,0)
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                                            local vim = game:service'VirtualInputManager'
                                                            vim:SendKeyEvent(true, "X", false, game)
                                                            vim:SendKeyEvent(false, "X", false, game)
                                                        end
                                                        if SkillC and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
                                                            local args = {
                                                                [1] = v.HumanoidRootPart.Position 
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                            local args = { 
                                                                [1] = "C",
                                                                [2] = Vector3.new(0,0,0)
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                                            local vim = game:service'VirtualInputManager'
                                                            vim:SendKeyEvent(true, "C", false, game)
                                                            vim:SendKeyEvent(false, "C", false, game)
                                                        end
                                                        if SkillV and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.V then
                                                            local args = {
                                                                [1] = v.HumanoidRootPart.Position
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                            local args = {
                                                                [1] = "V",
                                                                [2] = Vector3.new(0,0,0)
                                                            }
                                                            game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                                            local vim = game:service'VirtualInputManager'
                                                            vim:SendKeyEvent(true, "V", false, game)
                                                            vim:SendKeyEvent(false, "V", false, game)
                                                        end
                                                    end 
                                                else
                                                    UseSkillMasteryDevilFruit = false
                                                    EquipWeapon(SelectToolWeapon)
                                                    Usefastattack = true
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        local args = {
                                                            [1] = "Buso"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    end
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 30)
                                                    Click()
                                                    StartMagnetAutoFarmLevel = true
                                                end
                                            until StatsBypass ~= "Bypassed" or not farm or not v.Parent or v.Humanoid.Health <= 0 or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                            end
                                            Usefastattack = false
                                            StartMagnetAutoFarmLevel= false
                                        else
                                            game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                        end 
                                    end
                                end
                            else
                                if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                    game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                end
                                Usefastattack = false
                                StartMagnetAutoFarmLevel= false
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                            end
                        end
                    elseif not UseTP then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            Usefastattack = false
                            StartMagnetAutoFarmLevel= false
                            Questtween = toTarget(NPCQuestCFrame.Position,NPCQuestCFrame) wait(.1)
                            if OldWorld and (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                if Questtween then Questtween:Stop() end
                                local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Entrance
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif OldWorld and not (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                if Questtween then Questtween:Stop() end
                                wait(.1)
                                if game.Players.LocalPlayer.Data.Level.Value == 450 or game.Players.LocalPlayer.Data.Level.Value <= 474 then
                                    local TouchInterest = game:GetService("Workspace").Map.SkyArea2.PathwayHouse.Exit
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                else
                                    local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Exit
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                end
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif OldWorld and Ms == "God's Guard [Lv. 450]" and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 15000 then
                                if Questtween then Questtween:Stop() end
                                wait(.1)
                                local TouchInterest = game:GetService("Workspace").Map.SkyArea2.PathwayHouse.Exit
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                wait(.5)
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif OldWorld and (Ms == "Galley Captain [Lv. 650]" or Ms == "Galley Pirate [Lv. 625]") and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 10000 then
                                if Questtween then Questtween:Stop() end
                                wait(.1)
                                local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Exit
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif NewWorld and string.find(Ms, "Ship") and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                if Questtween then Questtween:Stop() end
                                local TouchInterest = game:GetService("Workspace").Map.GhostShip.Teleport
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                wait(.5)
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif NewWorld and not string.find(Ms, "Ship") and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                if Questtween then Questtween:Stop() end
                                local TouchInterest = game:GetService("Workspace").Map.GhostShipInterior.Teleport
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                wait(.5)
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                                -- -- UseTween = false = false
                            elseif (NPCQuestCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                if Questtween then Questtween:Stop() end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
                                wait(1)
                                local string_1 = "StartQuest";
                                local string_2 = NameQuest;
                                local number_1 = LevelQuest;
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, string_2, number_1);
                                local string_1 = "SetSpawnPoint";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1);
                            end 
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if farm and v.Name == Ms and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            repeat wait()
                                                Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                if OldWorld and (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                                    if Farmtween then Farmtween:Stop() end
                                                    if Modstween then Modstween:Stop() end
                                                    local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Entrance
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                                    local string_1 = "SetSpawnPoint";
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1);
                                                    -- UseTween = false
                                                elseif OldWorld and not (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                                    if Farmtween then Farmtween:Stop() end
                                                    if Modstween then Modstween:Stop() end
                                                    local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Exit
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                                    local string_1 = "SetSpawnPoint";
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1);
                                                    -- UseTween = false
                                                elseif OldWorld and Ms == "God's Guard [Lv. 450]" and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 15000 then
                                                    if Questtween then Questtween:Stop() end
                                                    wait(.1)
                                                    local TouchInterest = game:GetService("Workspace").Map.SkyArea2.PathwayHouse.Exit
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                                    wait(.5)
                                                    local string_1 = "SetSpawnPoint";
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1);
                                                    -- -- UseTween = false = false
                                                elseif NewWorld and string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                                    if Farmtween then Farmtween:Stop() end
                                                    if Modstween then Modstween:Stop() end
                                                    local TouchInterest = game:GetService("Workspace").Map.GhostShip.Teleport
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                                    wait(.5)
                                                    local string_1 = "SetSpawnPoint";
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1);
                                                    -- UseTween = false
                                                elseif NewWorld and not string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                                    if Farmtween then Farmtween:Stop() end
                                                    if Modstween then Modstween:Stop() end
                                                    local TouchInterest = game:GetService("Workspace").Map.GhostShipInterior.Teleport
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                                    wait(.5)
                                                    local string_1 = "SetSpawnPoint";
                                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                    Target:InvokeServer(string_1);
                                                    -- UseTween = false
                                                elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                                    EquipWeapon(SelectToolWeapon)
                                                    if Farmtween then Farmtween:Stop() end
                                                    if Modstween then Modstween:Stop() end
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    StartMagnetAutoFarmLevel= true
                                                    Usefastattack = true
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        local args = {
                                                            [1] = "Buso"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    end

                                                    HealthMin = v.Humanoid.MaxHealth*Persen/100
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                                        Usefastattack = false
                                                        EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 10)
                                                        MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
                                                        DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
                                                        PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                        UseSkillMasteryDevilFruit = true
                                                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
                                                            if SkillZ and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
                                                                local args = {
                                                                    [1] = v.HumanoidRootPart.Position
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteEvent:FireServer(unpack(args))
                                                                local args = {
                                                                    [1] = "Z",
                                                                    [2] = Vector3.new(0,0,0)
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteFunction:InvokeServer(unpack(args))
                                                                local vim = game:service'VirtualInputManager'
                                                                vim:SendKeyEvent(true, "Z", false, game)
                                                                vim:SendKeyEvent(false, "Z", false, game)
                                                            end
                                                            if SkillX and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                                                local args = {
                                                                    [1] = v.HumanoidRootPart.Position
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteEvent:FireServer(unpack(args))
                                                                local args = {
                                                                    [1] = "X"
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character["Dragon-Dragon"].RemoteFunction:InvokeServer(unpack(args))
                                                                local vim = game:service'VirtualInputManager'
                                                                vim:SendKeyEvent(true, "X", false, game)
                                                                vim:SendKeyEvent(false, "X", false, game)
                                                            end   
                                                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                                                            if SkillZ and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) then
                                                            else
                                                                local args = {
                                                                    [1] = "Z",
                                                                    [2] = Vector3.new(0,0,0)
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character["Human-Human: Buddha"].RemoteFunction:InvokeServer(unpack(args))
                                                                local vim = game:service'VirtualInputManager'
                                                                vim:SendKeyEvent(true, "Z", false, game)
                                                                vim:SendKeyEvent(false, "Z", false, game)
                                                            end
                                                            if SkillX and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                                                local args = {
                                                                    [1] = v.HumanoidRootPart.Position
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                                local args = {
                                                                    [1] = "X",
                                                                    [2] = Vector3.new(0,0,0)
                                                                }
                                                                
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                                                local vim = game:service'VirtualInputManager'
                                                                vim:SendKeyEvent(true, "X", false, game)
                                                                vim:SendKeyEvent(false, "X", false, game)
                                                            end
                                                            if SkillC and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
                                                                local args = {
                                                                    [1] = v.HumanoidRootPart.Position 
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                                local args = { 
                                                                    [1] = "C",
                                                                    [2] = Vector3.new(0,0,0)
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                                                local vim = game:service'VirtualInputManager'
                                                                vim:SendKeyEvent(true, "C", false, game)
                                                                vim:SendKeyEvent(false, "C", false, game)
                                                            end  
                                                        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
                                                            if SkillZ and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
                                                                local args = {
                                                                    [1] = v.HumanoidRootPart.Position
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                                local args = {
                                                                    [1] = "Z",
                                                                    [2] = Vector3.new(0,0,0)
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                                                local vim = game:service'VirtualInputManager'
                                                                vim:SendKeyEvent(true, "Z", false, game)
                                                                vim:SendKeyEvent(false, "Z", false, game)
                                                            end
                                                            if SkillX and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
                                                                local args = {
                                                                    [1] = v.HumanoidRootPart.Position
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                                local args = {
                                                                    [1] = "X",
                                                                    [2] = Vector3.new(0,0,0)
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                                                local vim = game:service'VirtualInputManager'
                                                                vim:SendKeyEvent(true, "X", false, game)
                                                                vim:SendKeyEvent(false, "X", false, game)
                                                            end
                                                            if SkillC and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
                                                                local args = {
                                                                    [1] = v.HumanoidRootPart.Position 
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                                local args = { 
                                                                    [1] = "C",
                                                                    [2] = Vector3.new(0,0,0)
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                                                local vim = game:service'VirtualInputManager'
                                                                vim:SendKeyEvent(true, "C", false, game)
                                                                vim:SendKeyEvent(false, "C", false, game)
                                                            end
                                                            if SkillV and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.V then
                                                                local args = {
                                                                    [1] = v.HumanoidRootPart.Position
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
                                                                local args = {
                                                                    [1] = "V",
                                                                    [2] = Vector3.new(0,0,0)
                                                                }
                                                                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].RemoteFunction:InvokeServer(unpack(args))
                                                                local vim = game:service'VirtualInputManager'
                                                                vim:SendKeyEvent(true, "V", false, game)
                                                                vim:SendKeyEvent(false, "V", false, game)
                                                            end
                                                        end 
                                                    else
                                                        UseSkillMasteryDevilFruit = false
                                                        EquipWeapon(SelectToolWeapon)
                                                        Usefastattack = true
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                            local args = {
                                                                [1] = "Buso"
                                                            }
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                        end
                                                        PosMon = v.HumanoidRootPart.CFrame
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 30)
                                                        Click()
                                                        StartMagnetAutoFarmLevel = true
                                                    end
                                                end
                                            until not farm or not v.Parent or v.Humanoid.Health <= 0 or not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                            end
                                            Usefastattack = false
                                            StartMagnetAutoFarmLevel= false
                                        else
                                            game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                        end 
                                    end
                                end
                            else
                                if not string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                    game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest");
                                end
                                Usefastattack = false
                                StartMagnetAutoFarmLevel= false
                                Modstween = toTarget(CFrameMon.Position,CFrameMon)
                                if OldWorld and (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                    if Modstween then Modstween:Stop() end
                                    local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Entrance
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                    -- UseTween = false
                                elseif OldWorld and not (Ms == "Fishman Commando [Lv. 400]" or Ms == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
                                    if Modstween then Modstween:Stop() end
                                    local TouchInterest = game:GetService("Workspace").Map.TeleportSpawn.Exit
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                    -- UseTween = false
                                elseif OldWorld and Ms == "God's Guard [Lv. 450]" and (NPCQuestCFrame.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 15000 then
                                    if Questtween then Questtween:Stop() end
                                    wait(.1)
                                    local TouchInterest = game:GetService("Workspace").Map.SkyArea2.PathwayHouse.Exit
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                    wait(.5)
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                    -- -- UseTween = false = false
                                elseif NewWorld and string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                    if Modstween then Modstween:Stop() end
                                    local TouchInterest = game:GetService("Workspace").Map.GhostShip.Teleport
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                    wait(.5)
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                    -- UseTween = false
                                elseif NewWorld and not string.find(Ms, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
                                    if Modstween then Modstween:Stop() end
                                    local TouchInterest = game:GetService("Workspace").Map.GhostShipInterior.Teleport
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TouchInterest.CFrame
                                    wait(.5)
                                    local string_1 = "SetSpawnPoint";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1);
                                    -- UseTween = false    
                                elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                    if Modstween then Modstween:Stop() end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
                                end 
                            end
                        end
                    else
                        if game:GetService("Players").LocalPlayer.Data.Stats.Defense.Level.Value == 1 then
                            if StatsBypass == "NoBypassTP" then
                                StatsBypass = "Bypassing"
                            end
                            wait(.5)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") and StatsBypass == "Bypassing" then
                                if game.Players.LocalPlayer.PlayerGui.Main.HP.TextLabel.Text == "Health 100/100" then
                                    repeat wait()
                                        if OldWorld then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
                                                TP(game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            else
                                                TP(game:GetService("ReplicatedStorage"):FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            end
                                        elseif NewWorld then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain [Lv. 900]") then
                                                TP(game:GetService("Workspace").Enemies:FindFirstChild("Marine Captain [Lv. 900]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            else
                                                TP(game:GetService("ReplicatedStorage"):FindFirstChild("Marine Captain [Lv. 900]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            end
                                        elseif ThreeWorld then
                                            if game:GetService("Workspace").Enemies:FindFirstChild("Marine Commodore [Lv. 1700]") then
                                                TP(game:GetService("Workspace").Enemies:FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            else
                                                TP(game:GetService("ReplicatedStorage"):FindFirstChild("Marine Commodore [Lv. 1700]").HumanoidRootPart.CFrame * CFrame.new(0,0,-3))
                                            end
                                        end
                                        wait(2)
                                    until game.Players.LocalPlayer.PlayerGui.Main.HP.TextLabel.Text ~= "Health 100/100"
                                    StatsBypass = "Bypassed"
                                end
                            end
                        end
                    end
                end
            end
            fastWait(.05)
        end
    end)
    spawn(function()
        game:GetService("RunService").Stepped:Connect(function()
            if farm or AutoNew then
                if not KRNL_LOADED and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                    setfflag("HumanoidParallelRemoveNoPhysics", "False")
                    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                else
                    if not game:GetService("Workspace"):FindFirstChild("LOL") then
                        local LOL = Instance.new("Part")
                        LOL.Name = "LOL"
                        LOL.Parent = game.Workspace
                        LOL.Anchored = true
                        LOL.Transparency = 0.8
                        LOL.Size = Vector3.new(10,0.5,10)
                    elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                        game.Workspace["LOL"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    end
                end
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
    spawn(function()
        while true do CheckQuest()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if farm and StartMagnetAutoFarmLevel and v.Name ~= "Ice Admiral [Lv. 700] [Boss]" and v.Name ~= "Wysper [Lv. 500] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position -  game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
                    v.HumanoidRootPart.CFrame = PosMon
                    v.HumanoidRootPart.CanCollide = false
                    v.Humanoid:ChangeState(14)
                end
            end
            game:GetService('RunService').Stepped:wait()
        end
    end)
    return AutoFarmfunc
end

spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if UseSkillMasteryDevilFruit then
                        args[2] = PositionSkillMasteryDevilFruit
                        return old(unpack(args))
                    elseif Skillaimbot then
                        args[2] = AimBotSkillPosition
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)

local kkii = require(game.ReplicatedStorage.Util.CameraShaker)
local Controller = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController
local cd = 0.1
spawn(function()
    for i = 1,5 do
        game:GetService('RunService').Stepped:connect(function()
            for i = 1,5 do
                kkii:Stop()
                if Usefastattack or UsefastattackS and fastattect then
                    pcall(function()
                        if RigC.activeController then
                            RigC.activeController.timeToNextAttack = -(math.huge ^ math.huge ^ math.huge)
                            RigC.activeController.increment = 3
                            RigC.activeController.attacking = false
                            RigC.activeController.hitboxMagnitude = 50
                        end 
                    end)
                end
            end
        end)
    end
end)

spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        if fastattect then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 100 then
                    UsefastattackS = true
                    if RigC.activeController then
                        RigC.activeController.timeToNextAttack = -(math.huge ^ math.huge ^ math.huge)
                        RigC.activeController.increment = 3
                        RigC.activeController.attacking = false
                        RigC.activeController.hitboxMagnitude = 50
                    end
                else
                    UsefastattackS = false
                end
            end
            for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                if v.Name ~= game.Players.LocalPlayer.Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 100 then
                    if fastattect then
                        UsefastattackS = true
                        if RigC.activeController then
                            RigC.activeController.timeToNextAttack = -(math.huge ^ math.huge ^ math.huge)
                            RigC.activeController.increment = 3
                            RigC.activeController.attacking = false
                            RigC.activeController.hitboxMagnitude = 50
                        end
                    end
                else
                    UsefastattackS = false
                end
            end
        end
    end)
end)

local P = page:addSection("Auto Farm")  
local MainAutoFarmFunction = AutoFarm(Ms,NameQuest,LevelQuest,NameMon,CFrameMon,CFrameQuest,"AutoFarmLevel")
spawn(function()
    while true do CheckQuest()
        if Auto_Farm then
            MainAutoFarmFunction:Update(Ms,NameQuest,LevelQuest,NameMon,CFrameMon,CFrameQuest)
        end
        fastWait(.05)
    end
end)


Weapon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(Weapon ,v.Name)
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(Weapon, v.Name)
    end
end

local Set = page:addSection("Auto Farm Setting")
SelectToolWeapon = "" or false
Set:addDropdown("Selected Weapon",Weapon,function(a)
    SelectToolWeapon = a 
end)
Set:addButton("Refrash", function()
    Weapon = {}
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
        if v:IsA("Tool") then
            table.insert(Weapon ,v.Name)
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
        if v:IsA("Tool") then
            table.insert(Weapon, v.Name)
        end
    end
    SelectedWeapon:Refresh(Weapon)
end)










P:addToggle("Auto Farm Level",false,function(a)
    Auto_Farm = a
    MainAutoFarmFunction:UpdateFarmMode("AutoFarmLevel")
    if Auto_Farm then
        MainAutoFarmFunction:Start()
    else
        MainAutoFarmFunction:Stop()
    end
end)
fastattect = true
Set:addToggle("Fast Attack", true,function(a)
    fastattect = a
end)
Set:addButton("Refresh Character",function()
    game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(15, true)
    game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(15)
end)
if OldWorld then
    -- Auto New World
    P:addToggle("Auto New World",false,function(vu)
        AutoNew = vu
    end)
    spawn(function()
        while wait() do
            if AutoNew then
                local MyLevel = game.Players.localPlayer.Data.Level.Value
                if MyLevel >= 700 and OldWorld and AutoNew then
                    if Auto_Farm then
                        MainAutoFarmFunction:Stop()
                    end
                    if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Dressrosa") ~= 0 then
                        if Workspace.Map.Ice.Door.Transparency == 1 then
                            if (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 250 then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
                                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
                                    wait(.4)
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                                end
                                DoorNewWorldTween = toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488).Position,CFrame.new(1347.7124, 37.3751602, -1325.6488))
                                if (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                    if DoorNewWorldTween then DoorNewWorldTween:Stop() end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.7124, 37.3751602, -1325.6488)
                                end
                            elseif game.Workspace.Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") and game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 and (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                if DoorNewWorldTween then DoorNewWorldTween:Stop() end
                                CheckBoss = true
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if CheckBoss and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                                        repeat wait()
                                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                            elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                if Farmtween then
                                                    Farmtween:Stop()
                                                end
                                                EquipWeapon(SelectToolWeapon)
                                                Usefastattack = true
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    local args = {
                                                        [1] = "Buso"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                                Click()
                                            end 
                                        until not CheckBoss or not v.Parent or v.Humanoid.Health <= 0 or AutoNew == false
                                        Usefastattack = false
                                    end
                                end
                                CheckBoss = false
                            end 
                        else
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or game.Players.LocalPlayer.Character:FindFirstChild("Key") then
                                DoorNewWorldTween = toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488).Position,CFrame.new(1347.7124, 37.3751602, -1325.6488))
                                if (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                    if DoorNewWorldTween then DoorNewWorldTween:Stop() end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.7124, 37.3751602, -1325.6488)
                                    local args = {
                                        [1] = "DressrosaQuestProgress",
                                        [2] = "Detective"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    wait(0.5)
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
                                        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
                                        wait(.4)
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                                    end
                                end
                            else
                                AutoNewWorldTween = toTarget(CFrame.new(4849.29883, 5.65138149, 719.611877).Position,CFrame.new(4849.29883, 5.65138149, 719.611877))
                                if (CFrame.new(4849.29883, 5.65138149, 719.611877).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
                                    if DoorNewWorldTween then DoorNewWorldTween:Stop() end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4849.29883, 5.65138149, 719.611877)
                                    local args = {
                                        [1] = "DressrosaQuestProgress",
                                        [2] = "Detective"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    wait(0.5)
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
                                        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Key")
                                        wait(.4)
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                                    end
                                end
                            end
                        end
                    else
                        local args = {
                            [1] = "TravelDressrosa" -- OLD WORLD to NEW WORLD
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                end
            end
        end
    end)
elseif NewWorld then
    P:addToggle("Auto third World", false,function(vu)
        if SelectToolWeapon == "" and vu then
            Flux:Notification("Select Weapon First in Tab Auto Farm")
        else
            OldSelectToolWeapon = SelectToolWeapon
            Autothird = vu
        end	
    end)
    spawn(function()
        while wait() do
            if Autothird then
                local MyLevel = game.Players.localPlayer.Data.Level.Value
                if MyLevel >= 1500 and NewWorld and Autothird then
                    if Auto_Farm then
                        MainAutoFarmFunction:Stop()
                    end
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
                            local args = {
                                [1] = "TravelZou" -- OLD WORLD to NEW WORLD
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            
                            if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then
                                if game.Workspace.Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then 	
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "rip_indra [Lv. 1500] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat wait()
                                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                    Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    if Farmtween then
                                                        Farmtween:Stop()
                                                    end
                                                    EquipWeapon(SelectToolWeapon)
                                                    Usefastattack = true
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        local args = {
                                                            [1] = "Buso"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                                    Click()
                                                end 
                                            until not Autothird or not v.Parent or v.Humanoid.Health <= 0 
                                            wait(.5)
                                            asmrqq = 2
                                            repeat wait()
                                                local args = {
                                                    [1] = "TravelZou" -- OLD WORLD to NEW WORLD
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            until asmrqq == 1
                                            Usefastattack = false
                                        end
                                    end
                                else -- SlashHit : rbxassetid://2453605589
                                    local string_1 = "ZQuestProgress";
                                    local string_2 = "Check";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1, string_2);
                                    wait()
                                    local string_1 = "ZQuestProgress";
                                    local string_2 = "Begin";
                                    local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                    Target:InvokeServer(string_1, string_2);
                                end
                            elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
                                local args = {
                                    [1] = "TravelZou" -- OLD WORLD to NEW WORLD
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            else
                                if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then 	
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Don Swan [Lv. 1000] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat wait()
                                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                    Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                                elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                    if Farmtween then
                                                        Farmtween:Stop()
                                                    end
                                                    EquipWeapon(SelectToolWeapon)
                                                    Usefastattack = true
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        local args = {
                                                            [1] = "Buso"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    end
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                                    Click()
                                                end 
                                            until not Autothird or not v.Parent or v.Humanoid.Health <= 0 
                                            Usefastattack = false
                                        end
                                    end
                                else -- SlashHit : rbxassetid://2453605589
                                    TweenDonSwanthireworld = toTarget(CFrame.new(2288.802, 15.1870775, 863.034607).Position,CFrame.new(2288.802, 15.1870775, 863.034607))
                                    if (CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if TweenDonSwanthireworld then
                                            TweenDonSwanthireworld:Stop()
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2288.802, 15.1870775, 863.034607)
                                        end
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
                                TabelDevilFruitStore = {}
                                TabelDevilFruitOpen = {}

                                for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
                                    for i1,v1 in pairs(v) do
                                        if i1 == "Name" then 
                                            table.insert(TabelDevilFruitStore,v1)
                                        end
                                    end
                                end

                                for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
                                    if v.Price >= 1000000 then  
                                        table.insert(TabelDevilFruitOpen,v.Name)
                                    end
                                end

                                for i,DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
                                    for i1,DevilFruitStore in pairs(TabelDevilFruitStore) do
                                        if DevilFruitOpenDoor == DevilFruitStore and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then    
                                            if not game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then   
                                                local string_1 = "LoadFruit";
                                                local string_2 = DevilFruitStore;
                                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                Target:InvokeServer(string_1, string_2);
                                            else
                                                local string_1 = "TalkTrevor";
                                                local string_2 = "1";
                                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                Target:InvokeServer(string_1, string_2);
                                                local string_1 = "TalkTrevor";
                                                local string_2 = "2";
                                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                Target:InvokeServer(string_1, string_2);
                                                local string_1 = "TalkTrevor";
                                                local string_2 = "3";
                                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                                Target:InvokeServer(string_1, string_2);
                                            end
                                        end
                                    end
                                end

                                local string_1 = "TalkTrevor";
                                local string_2 = "1";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, string_2);
                                local string_1 = "TalkTrevor";
                                local string_2 = "2";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, string_2);
                                local string_1 = "TalkTrevor";
                                local string_2 = "3";
                                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                                Target:InvokeServer(string_1, string_2);
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                            if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then 
                                if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if v.Name == "Swan Pirate [Lv. 775]" then
                                            pcall(function()
                                                repeat wait()
                                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                        Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                                    elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                        if Farmtween then
                                                            Farmtween:Stop()
                                                        end
                                                        EquipWeapon(SelectToolWeapon)
                                                        Usefastattack = true
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                            local args = {
                                                                [1] = "Buso"
                                                            }
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                        end
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                                        Click()
                                                    end 
                                                until not v.Parent or v.Humanoid.Health <= 0 or Autothird == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                AutoBartiloBring = false
                                                Usefastattack = false
                                            end)
                                        end
                                    end
                                else
                                    Questtween = toTarget(CFrame.new(1057.92761, 137.614319, 1242.08069).Position,CFrame.new(1057.92761, 137.614319, 1242.08069))
                                    if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if Questtween then
                                            Questtween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069)
                                    end
                                end
                            else
                                Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
                                if ( CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if Bartilotween then
                                        Bartilotween:Stop()
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-456.28952, 73.0200958, 299.895966)
                                    local args = {
                                        [1] = "StartQuest",
                                        [2] = "BartiloQuest",
                                        [3] = 1
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                            end 
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                            if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
                                Ms = "Jeremy [Lv. 850] [Boss]"
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == Ms then
                                        repeat wait()
                                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                            elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                if Farmtween then
                                                    Farmtween:Stop()
                                                end
                                                EquipWeapon(SelectToolWeapon)
                                                Usefastattack = true
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    local args = {
                                                        [1] = "Buso"
                                                    }
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
                                                Click()
                                            end 
                                        until not v.Parent or v.Humanoid.Health <= 0 or Autothird == false
                                        Usefastattack = false
                                    end
                                end
                            else
                                Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
                                if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if Bartilotween then
                                        Bartilotween:Stop()
                                    end
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
                                end
                            end
                        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                            if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position,CFrame.new(-1836, 11, 1714))
                            elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                if Bartilotween then
                                    Bartilotween:Stop()
                                end
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
                                wait(.5)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
                                wait(.1)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
                            end
                        end
                    end
                end
            end
        end
    end)
end





P:addToggle("Auto Factory", false,function(A)
    Factory = A
    if not Factory then
        FactoryCore = false
    end
end)
spawn(function()
    while wait() do
        if Factory then
            if game.Workspace.Enemies:FindFirstChild("Core") then
                FactoryCore = true
                MainAutoFarmFunction:Stop()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if FactoryCore and v.Name == "Core" and v.Humanoid.Health > 0 then
                        repeat wait(.1)
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
                                Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                            elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                                if Farmtween then
                                    Farmtween:Stop()
                                end
                                EquipWeapon(SelectToolWeapon)
                                Usefastattack = true
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    local args = {
                                        [1] = "Buso"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 10)
                                Click()
                            end
                        until not FactoryCore or v.Humanoid.Health <= 0 or Factory == false
                        Usefastattack = false
                    end
                end
            elseif game.ReplicatedStorage:FindFirstChild("Core") and game.ReplicatedStorage:FindFirstChild("Core"):FindFirstChild("Humanoid") then
                FactoryCore = true
                MainAutoFarmFunction:Stop()
                GOtween = toTarget(CFrame.new(448.46756, 199.356781, -441.389252).Position,CFrame.new(448.46756, 199.356781, -441.389252).CFrame)
                if (CFrame.new(448.46756, 199.356781, -441.389252).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
                    if Farmtween then
                        GOtween:Stop()
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(448.46756, 199.356781, -441.389252)
                end
            elseif Auto_Farm then
                FactoryCore = false
                MainAutoFarmFunction:Start()
            end
        end
    end
end)





local J1 = J:addSection("Sword")
local J2 = J:addSection("Melee")
local J3 = J:addSection("Ability")
local J4 = J:addSection("Other")

J1:addToggle("Auto Buy Legendary Sword",false,function(Value)
    Legendary = Value    
end)


J4:addToggle("Auto Buy Enhancement", false,function(Value)
    Enhancement = Value    
end)
spawn(function()
    while wait() do
        if Legendary then
            local args = {
                [1] = "LegendarySwordDealer",
                [2] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end 
        if Enhancement then
            local args = {
                [1] = "ColorsDealer",
                [2] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end 
    end
end)   

































local EE1 = E1:addSection("Stats")
EE1:addToggle("Melee",nil,function(value)
    _G.melee = value   
    while _G.melee do wait()
            local args = {
                [1] = "AddPoint",
                [2] = "Melee",
                [3] = PointStats
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end 
end)
EE1:addToggle("Defense",nil,function(value)
   _G.defense = value
   while _G.defense do wait()
    local args = {
        [1] = "AddPoint",
        [2] = "Defense",
        [3] = PointStats
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end 
end)
EE1:addToggle("Sword",nil,function(value)
   _G.sword = value
   while _G.sword do wait()
   local args = {
    [1] = "AddPoint",
    [2] = "Sword",
    [3] = PointStats
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end 
end)
EE1:addToggle("Gun",nil,function(value)
   _G.gun = value
   while _G.gun do wait()
   local args = {
    [1] = "AddPoint",
    [2] = "Gun",
    [3] = PointStats
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end 
end)
EE1:addToggle("Blox Fruit",nil,function(value)
   _G.demonfruit = value
   while _G.demonfruit do wait()
   local args = {
    [1] = "AddPoint",
    [2] = "Demon Fruit",
    [3] = PointStats
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)








local colors = theme:addSection("Setting")

colors:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
venyx:toggle()
end, function()
end)

local colors = theme:addSection("Colors")
for theme, color in pairs(themes) do
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

venyx:SelectPage(venyx.pages[1], true)
