:wave: HEY WELCOME TO DN NOTIFY SCRIPT SHOWCASE

NOTIFICATION SCRIPT..
WITH MULTIPLE FEATURES

# FEATURES

  [FREE/ESX]
. Create multiple, highly customizable notification
. Users can change notification location, direction and volume
. Reuse defined notifications
. Can be used with export or client event
. Also can use this as a default notification

# IMAGE 
https://cdn.discordapp.com/attachments/1141558363054944256/1142433018473095258/DN_NOTIFY.png

# DN NOTIFY
----------------

GITHUB - https://github.com/DN-SCRIPT/dn_notify

TEBEX - https://dn-script.tebex.io/package/5864995

Many updates and suggestions being actively implemented

```
### Installation

  

Add this in your `server.cfg`:

```
ensure dn_notify
```
start your server
```
use commands like /warn , /error , /success , /info , /announcment 
```
for notify settings use - notifysettings
```

# IF YOU NEED TO ADD THIS NOTIFICATION AS DEFAULT IN ESX LEGACY

1 . @es_extended/client/function.lua
    
    [   function ESX.ShowNotification(message, type, length)
      if GetResourceState("esx_notify") ~= "missing" then
         exports["esx_notify"]:Notify(type, length, message)
      else
         print("[^1ERROR^7] ^5ESX Notify^7 is Missing!")
      end
   end] -- replace it with this 👇

function ESX.ShowNotification(message, type, length)
    if GetResourceState("dn_notify") ~= "missing" then
       exports['dn_notify']:notify("NOTIFICATION", message, length, type)
    else
       print("[^1ERROR^7] ^5DN_NOTIFY^7 is Missing!")
    end
 end
Using export

    exports["dn_notify"]:notify('Notification', 'This is a notification!', 'myNotification') -- dn notify
Using client event

Using Server Side:

    TriggerClientEvent("dn_notify:notify", source, 'Notification', 'This is a notification', 'myNotification', 10000)

    
 # DN DEVELOPMENT 
 
 DISCORD - https://discord.gg/eqsZkck8Wc

thank you 
dn development 
