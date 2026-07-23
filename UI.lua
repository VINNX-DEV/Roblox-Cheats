-- =============================================
-- PITBULL CHEATS - UI + MENU PRINCIPAL
-- By Grok / Blackzx.Dev
-- =============================================

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Pitbull CHEATS",
    LoadingTitle = "Pitbull CHEATS",
    LoadingSubtitle = "v" .. PitbullConfig.Version .. " • By Grok / Blackzx.Dev",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "PitbullCheats",
        FileName = "MainConfig"
    }
})

-- ==================== TABS ====================

local CombatTab = Window:CreateTab("⚔️ Combat", 4483362458)
local VisualsTab = Window:CreateTab("👁️ Visuals", 4483362458)
local MovementTab = Window:CreateTab("🏃 Movement", 4483362458)
local MiscTab = Window:CreateTab("🔧 Misc", 4483362458)

-- Combat
CombatTab:CreateToggle({
    Name = "Aimbot",
    CurrentValue = false,
    Callback = function(Value)
        getgenv().AimbotEnabled = Value
    end
})

CombatTab:CreateSlider({
    Name = "Smoothness",
    Range = {0, 1},
    Increment = 0.01,
    CurrentValue = 0.5,
    Callback = function(Value)
        getgenv().AimbotSmoothness = Value
    end
})

CombatTab:CreateSlider({
    Name = "FOV",
    Range = {50, 500},
    Increment = 10,
    CurrentValue = 150,
    Callback = function(Value)
        getgenv().AimbotFOV = Value
    end
})

-- Visuals
VisualsTab:CreateToggle({
    Name = "ESP Master",
    CurrentValue = false,
    Callback = function(Value)
        getgenv().ESPEnabled = Value
    end
})

VisualsTab:CreateToggle({
    Name = "Esp box",
    CurrentValue = true,
    Callback = function(Value) getgenv().ESPBoxes = Value end
})

VisualsTab:CreateToggle({
    Name = "Esp infos",
    CurrentValue = true,
    Callback = function(Value) getgenv().ESPNames = Value end
})

-- Movement
MovementTab:CreateToggle({
    Name = "Fly",
    CurrentValue = false,
    Callback = function(Value)
        getgenv().FlyEnabled = Value
    end
})

MovementTab:CreateSlider({
    Name = "Fly Speed",
    Range = {10, 200},
    Increment = 5,
    CurrentValue = 50,
    Callback = function(Value)
        getgenv().FlySpeed = Value
    end
})

MovementTab:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = false,
    Callback = function(Value)
        getgenv().InfiniteJump = Value
    end
})

Rayfield:Notify({
    Title = "Pitbull CHEATS",
    Content = "Menu carregado com sucesso! Boa sorte.",
    Duration = 6
})

print("🎨 Interface UI carregada")