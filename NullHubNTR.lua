-- ===== Rayfield Load =====
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- ===== Window =====
local Window = Rayfield:CreateWindow({
    Name = "Key System",
    LoadingTitle = "Null Hub Key System",
    LoadingSubtitle = "Key System",
    Theme = "DarkBlue",
    ConfigurationSaving = {
        Enabled = false
    }
})

-- ===== Key System =====
local CorrectKey = "NullHubNoKey"
local EnteredKey = ""

local KeyTab = Window:CreateTab("Key System", "key")

KeyTab:CreateSection("Enter Your Key")

KeyTab:CreateInput({
    Name = "Key",
    PlaceholderText = "Enter Key Here",
    RemoveTextAfterFocusLost = false,
    Callback = function(text)
        EnteredKey = text
    end,
})

KeyTab:CreateButton({
    Name = "Submit Key",
    Callback = function()
        if EnteredKey == CorrectKey then
            Rayfield:Notify({
                Title = "Key System",
                Content = "Correct Key! Loading Hub...",
                Duration = 3
            })

            loadstring(game:HttpGet(
                "https://raw.githubusercontent.com/NullNTr/NullScript/refs/heads/main/NullHub.lua"
            ))()

        else
            Rayfield:Notify({
                Title = "Key System",
                Content = "Wrong Key!",
                Duration = 3
            })
        end
    end
})

KeyTab:CreateButton({
    Name = "Get Key",
    Callback = function()
        local link = "https://discord.gg/di-zheng-huang-rashigong-he-guo-1403496250715803790"

        if setclipboard then
            setclipboard(link)
        end
        
        Rayfield:Notify({
            Title = "Discord",
            Content = "Link Copied!!",
            Duration = 3,
            Image = 4483362458
        })
    end
})