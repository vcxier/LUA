<<<<<<< HEAD
local Source = "%sLoader.lua"
local Branch,NotificationTime,IsLocal = "%s",%s,%s

loadstring(IsLocal and readfile("Parvus/Loader.lua")
or game:HttpGet(Source),"Loader")(Branch,NotificationTime,IsLocal)
=======
local Source = "%sLoader.lua"
local Branch,NotificationTime,IsLocal = "%s",%s,%s

loadstring(IsLocal and readfile("Parvus/Loader.lua")
or game:HttpGet(Source),"Loader")(Branch,NotificationTime,IsLocal)
>>>>>>> 92e27af514c4421a0b97df4c7e54f287f0691e0c
