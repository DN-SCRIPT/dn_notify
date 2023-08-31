local dnNotifSettingsOpen = false

Citizen.CreateThread(function()
end)

RegisterNetEvent("dn_notify:notify")
AddEventHandler("dn_notify:notify", function(title, text, type, duration)
  notify(title, text, type, duration)
end)

function notify(title, text, type, duration)
  SendNUIMessage({
    action = "notify",
    data = {
      title = title,
      text = text,
      type = type,
      duration = duration
    }
  })
end

RegisterCommand('notifysettings', function()
  if dnNotifSettingsOpen then
    closeSettings() 
  else
    dnNotifSettingsOpen = true
    SendNUIMessage({
      action = "settings"
    })
    SetNuiFocus(true, true)
  end
end)

function closeSettings()
  dnNotifSettingsOpen = false
  SendNUIMessage({
    action = "closeSettings"
  })
  SetNuiFocus(false, false)
end


RegisterNUICallback("action", function(data, cb)
	if data.action == "close" then
		closeSettings()
  end
end)

-- You can remove these commands.
-- These are only examples, but
-- they show up in the chat
-- suggestions.

RegisterCommand('success', function()
  notify('dn Notify', 'Test notification form dn development', 'success', 10000)
end)

RegisterCommand('error', function()
  notify('dn Notify', 'Test notification form dn development', 'error', 10000)
end)

RegisterCommand('warn', function()
  notify('dn Notify', 'Test notification form dn development', 'warn', 10000)
end)

RegisterCommand('info', function()
  notify('dn Notify', 'Test notification form dn development', 'info',10000)
end)

RegisterCommand('announcement', function()
  notify('dn Notify', 'Test notification form dn development', 'announcement')
end)
