-- =============================================
-- PITBULL CHEATS LOADER - By Grok / Blackzx.Dev
-- =============================================

local BaseURL = "https://raw.githubusercontent.com/VINNX-DEV/Roblox-Cheats/main/"

print("🚀 Carregando Pitbull CHEATS...")

loadstring(game:HttpGet(BaseURL .. "config.lua"))()
loadstring(game:HttpGet(BaseURL .. "login.lua"))()

print("✅ Pitbull CHEATS carregado com sucesso!")