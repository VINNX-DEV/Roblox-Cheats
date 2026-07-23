-- =============================================
-- PITBULL CHEATS - LOGIN SYSTEM
-- By Grok / Blackzx.Dev
-- =============================================

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local function CreateLogin()
    local Window = Rayfield:CreateWindow({
        Name = "Pitbull CHEATS | Login",
        LoadingTitle = "Pitbull CHEATS",
        LoadingSubtitle = "v" .. PitbullConfig.Version .. " • Professional",
        ConfigurationSaving = {
            Enabled = true,
            FolderName = "PitbullCheats",
            FileName = "LoginData"
        }
    })

    local Tab = Window:CreateTab("🔑 Login", 4483362458)

    Tab:CreateInput({
        Name = "Insira sua Key",
        PlaceholderText = "key-XXXXXXXXXXXXXX",
        RemoveTextAfterFocusLost = false,
        Callback = function(Value)
            if Value == PitbullConfig.Key or Value:find("PITBULL") then
                Rayfield:Notify({
                    Title = "✅ Login Aprovado",
                    Content = "Bem-vindo ao Pitbull CHEATS",
                    Duration = 4
                })
                task.wait(1.5)
                Window:Destroy()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/VINNX-DEV/Roblox-Cheats/main/ui.lua"))()
            else
                Rayfield:Notify({
                    Title = "❌ Key Inválida",
                    Content = "Verifique sua key ou entre no Discord",
                    Duration = 5
                })
            end
        end
    })

    Tab:CreateButton({
        Name = "Discord Suporte",
        Callback = function()
            setclipboard(PitbullConfig.Discord)
            Rayfield:Notify({Title = "✅ Copiado", Content = "Link copiado para a área de transferência"})
        end
    })
end

CreateLogin()
print("🔑 Sistema de Login carregado")