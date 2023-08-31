
# dn  Notify

DN NOTIFY IS A FREE OPEN RESOURCE **FREE** FOR FIVEM ...

# IMPO
DONT CHANGE SCRIPT NAME 


## Help


IF YOU NEED ANY HELPS OR FIXING ISSUES JOIN DN DEVELOPMENT [Discord](https://discord.gg/5rPcUNHDEV)
  

# Download & Installation

**USING  TEBEX & GITHUB**

# INSPIRED

SCRIPT INSPIRED FORM - https://github.com/kac5a/k5_notify

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
# Last Words

thank you 
dn development 
