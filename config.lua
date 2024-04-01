Config = {}

Config.Settings = {
    -- useFramework = false, -- Coming Soon
    useAcePerms = true, -- Disable this if using a framework

    acePerms = "simple.staff"
}

-- Config.FrameworkSettings = { -- Ignore these settings
--     framework = "nd", -- Framework type ("nd" = NDCore | "nat" = NAT2K15)

--     NDCore_Settings = {

--         Departments = {
--             "Staff" -- Staff job via the framework
--         }
--     },

--     NAT2K15_Settings = {
--         "Staff" -- Staff job via the framework
--     }
-- }

Config.Logging = {

    WebhookName = "SimpleDevelopments",
    WebhookPFP = "https://cdn.discordapp.com/icons/1066225230479101972/88ffeb74a180ed40f5d49278259cbb8e.png?size=2048&format=webp&quality=lossless&width=0&height=320", -- PFP that the webhook will show in discord.
    S_WebhookColor = "65280", -- Color of the successful embed.
    F_WebhookColor = "16711680", -- Color of the failed embed.
    FooterIcon = "https://cdn.discordapp.com/icons/1066225230479101972/88ffeb74a180ed40f5d49278259cbb8e.png?size=2048&format=webp&quality=lossless&width=0&height=320", -- Footer Icon
    
    WebhookLink = "https://discord.com/api/webhooks/" -- Link to send to discord.
}
