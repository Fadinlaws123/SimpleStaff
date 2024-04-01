-- Log System --
local timestamp = os.date("%c")

--[[
   ---------------------------------------------------
  |                                                   |
  |             Ace Permission System                 |
  |                                                   |
   ---------------------------------------------------
]]

local staffPermission = Config.Settings.acePerms

local function isStaff(player) return
    IsPlayerAceAllowed(player, staffPermission) end

local function handleStaffCommand(source, args)
    local playerName = GetPlayerName(source)

    local players = GetPlayers()
    for _, player in ipairs(players) do
        if isStaff(player) then
            TriggerClientEvent("chat:addMessage", player, {
                color = {0, 130, 255},
                multiline = true,
                args = {
                    "~w~[~b~SimpleStaff~w~] ",
                    "^*~b~" .. playerName .. "~w~ " .. table.concat(args, " ")
                }
            })
        end
    end
end

RegisterCommand("sc", function(source, args, rawCommand)
    if #args <= 0 then
        TriggerClientEvent("chat:addMessage", source, {
            color = {0, 130, 255},
            multiline = true,
            args = {
                "~w~[~b~SimpleStaff~w~] ", "~o~You cannot send a blank message!"
            }
        })
    else
        if isStaff(source) then
            handleStaffCommand(source, args)
            SimpleStaff_True('SimpleStaff \n',
                             '**→ ' .. GetPlayerName(source) ..
                                 ' sent a message in StaffChat!\n ** **→ Successful: ** *True* \n** → Message Details:** *' ..
                                 table.concat(args, " ") ..
                                 '*\n \n**→ Time command was executed:** *' ..
                                 timestamp ..
                                 '* \n **→ Command Used: ** */sc*')
        else
            TriggerClientEvent("chat:addMessage", source, {
                color = {0, 130, 255},
                multiline = true,
                args = {
                    "~w~[~b~SimpleStaff~w~] ",
                    "~o~You lack permissions to use this command!"
                }
            })
            SimpleStaff_Fail('SimpleStaff \n',
                             '**→ ' .. GetPlayerName(source) ..
                                 ' attempted to use StaffChat!\n ** **→ Successful: ** *False* \n** → Fail Details:** *This user lacks permissions to use StaffChat!*\n \n**→ Time command was executed:** *' ..
                                 timestamp ..
                                 '* \n **→ Command Used: ** */sc*')
        end
    end
end, false)

--[[
   ---------------------------------------------------
  |                                                   |
  |             NAT2K15 Framework System              |
  |                                                   |
   ---------------------------------------------------
]]

-- Coming Soon --

--[[
   ---------------------------------------------------
  |                                                   |
  |             NDCore Framework System               |
  |                                                   |
   ---------------------------------------------------
]]

-- Coming Soon --

--[[
   ---------------------------------------------------
  |                                                   |
  |            SimpleStaff Logging System             |
  |                                                   |
   ---------------------------------------------------
]]

function SimpleStaff_Fail(name, message)
    local content = {
        {
            ["color"] = Config.Logging.F_WebhookColor,
            ["title"] = "**SimpleStaff Chat**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = 'Made by SimpleDevelopments',
                ["icon_url"] = Config.Logging.FooterIcon
            }
        }
    }

    PerformHttpRequest(Config.Logging.WebhookLink,
                       function(err, text, headers) end, 'POST', json.encode({
        username = Config.Logging.WebhookName,
        avatar_url = Config.Logging.WebhookPFP,
        embeds = content
    }), {['Content-Type'] = 'application/json'})
end

function SimpleStaff_True(name, message)
    local content = {
        {
            ["color"] = Config.Logging.S_WebhookColor,
            ["title"] = "**SimpleStaff Chat**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = 'Made by SimpleDevelopments',
                ["icon_url"] = Config.Logging.FooterIcon
            }
        }
    }

    PerformHttpRequest(Config.Logging.WebhookLink,
                       function(err, text, headers) end, 'POST', json.encode({
        username = Config.Logging.WebhookName,
        avatar_url = Config.Logging.WebhookPFP,
        embeds = content
    }), {['Content-Type'] = 'application/json'})
end
