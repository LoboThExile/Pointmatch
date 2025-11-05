scoreboard players enable @a PM_Shop

# Shop Related
execute as @a[scores={PM_Shop=10}] run function pointmatch:welcome_screen
execute as @a[scores={PM_Shop=100}] run function pointmatch:shop/open
# Shop play sound
execute as @a[scores={PM_Shop=-100}] run function pointmatch:shop/playshopmusic
execute as @a[scores={PM_Shop=-100}] run function pointmatch:shop/mutemusic

# Weapons Shop [200]
execute as @a[scores={PM_Shop=200}] run function pointmatch:shop/200/200open
execute as @a[scores={PM_Shop=210}] run function pointmatch:shop/200/melee
# purchase melee items [21#]
execute as @a[scores={PM_Shop=211}] run function pointmatch:shop/200/meleeitems/woodsword
execute as @a[scores={PM_Shop=212}] run function pointmatch:shop/200/meleeitems/stonesword
execute as @a[scores={PM_Shop=213}] run function pointmatch:shop/200/meleeitems/ironsword
execute as @a[scores={PM_Shop=214}] run function pointmatch:shop/200/meleeitems/diamondsword
# axe shop [230]
execute as @a[scores={PM_Shop=230}] run function pointmatch:shop/200/melee_axe
# purchase axe items [23#]
execute as @a[scores={PM_Shop=231}] run function pointmatch:shop/200/axeitems/woodaxe
execute as @a[scores={PM_Shop=232}] run function pointmatch:shop/200/axeitems/stoneaxe
execute as @a[scores={PM_Shop=233}] run function pointmatch:shop/200/axeitems/ironaxe
execute as @a[scores={PM_Shop=234}] run function pointmatch:shop/200/axeitems/diamondaxe

execute as @a[scores={PM_Shop=250}] run function pointmatch:shop/200/ranged
# Purchase Ranged Items [25#]
execute as @a[scores={PM_Shop=251}] run function pointmatch:shop/200/rangeditems/bow
execute as @a[scores={PM_Shop=252}] run function pointmatch:shop/200/rangeditems/crossbow
execute as @a[scores={PM_Shop=253}] run function pointmatch:shop/200/rangeditems/arrows
execute as @a[scores={PM_Shop=254}] run function pointmatch:shop/200/rangeditems/trident
#execute as @a[scores={PM_Shop=255}] run function pointmatch:shop/200/rangeditems/tridentloyal

# Armor Shop [300] - Unfinished
execute as @a[scores={PM_Shop=300}] run function pointmatch:shop/300/300open
# Purchase Armor Items [30#] - Unfinished
execute as @a[scores={PM_Shop=310}] run function pointmatch:shop/300/armoritems/armor1
execute as @a[scores={PM_Shop=320}] run function pointmatch:shop/300/armoritems/armor2
execute as @a[scores={PM_Shop=330}] run function pointmatch:shop/300/armoritems/armor3

# Misc Shop [400] - Unfinished
execute as @a[scores={PM_Shop=400}] run function pointmatch:shop/400/400open
# Purchase Misc Items [40#]
execute as @a[scores={PM_Shop=401}] run function pointmatch:shop/400/miscitems/cobblestone
execute as @a[scores={PM_Shop=402}] run function pointmatch:shop/400/miscitems/cobwebs
execute as @a[scores={PM_Shop=403}] run function pointmatch:shop/400/miscitems/pickaxe

# Other

# Death Announcements
execute as @a[scores={PM_Deaths=1..}, team=PM_Alpha] run tellraw @a [{"text":"Team Alpha Died..\nPlayer In Alpha:\n"},{selector:"@s"},{"text":"\n"}]

#title @a actionbar "Run /trigger PM_Shop 10\n "


# 1 = raining/thundering, 0 = clear

# Update current weather state (1 if raining, 0 if not)
execute if predicate {condition:weather_check,raining:true} run scoreboard players set #CurrWeather PM_Weather 1
execute unless predicate {condition:weather_check,raining:true} run scoreboard players set #CurrWeather PM_Weather 0

# Detect change from clear -> rain
execute if score #CurrWeather PM_Weather matches 1 if score #PrevWeather PM_Weather matches 0 as @a at @s run playsound pointmatch:pointmatch.weather.weathergirl weather @s ~ ~ ~ 0.05

# Detect change from rain -> clear
execute if score #CurrWeather PM_Weather matches 0 if score #PrevWeather PM_Weather matches 1 as @a at @s run stopsound @a * pointmatch:pointmatch.weather.weathergirl

# Update previous
scoreboard players operation #PrevWeather PM_Weather = #CurrWeather PM_Weather
