scoreboard players set @s PM_Shop 0
scoreboard players enable @s PM_Shop

# 5 seconds countdown
scoreboard players set #game PM_GAMESTARTCOUNTDOWN 500

# ───────────────────────────────
#  Welcome Screen
# ───────────────────────────────
stopsound @s * pointmatch:pointmatch.shop.music
stopsound @s * pointmatch:pointmatch.shop.music
stopsound @s * pointmatch:pointmatch.shop.music.hipshop
stopsound @s * pointmatch:pointmatch.shop.music.untitledtaggame

execute as @s at @s run playsound minecraft:block.note_block.bit


tellraw @a ["",{"text":"\n\n\n\n\n\n\n\n"}]
tellraw @a [{"text":"=================================","color":"gold"}]
tellraw @a [{"text":"     ✦ Welcome to PointMatch ✦","color":"yellow","bold":true}]
tellraw @a [{"text":"=================================","color":"gold"}]
tellraw @a [{"text":"Created by ","color":"gray"},{"text":"LoboThExile","color":"aqua",click_event:{action:"open_url",url:"https://github.com/LoboThExile"},hover_event:{action:"show_text",value:"Open LoboThExile's Github"},bold:true},{"text":" | Idea by ","color":"gray"},{"text":"Kirby","color":"light_purple",click_event:{action:"open_url",url:"https://hijjaz.straw.page/"},hover_event:{action:"show_text",value:"Open Kirby's Strawpage"},bold:true}]
tellraw @a ""
tellraw @a [{"text":"This datapack creates a ","color":"white"},{"text":"1v1 gamemode","color":"gold","bold":true},{"text":",\nwhere players earn points by defeating each other!","color":"white"}]
tellraw @a ""
tellraw @a [{"text":"[ Open Shop ]","color":"green","bold":true,"hover_event":{"action":"show_text","value":{"text":"Click to open the shop!","color":"yellow"}},"click_event":{"action":"run_command","command":"trigger PM_Shop set -100"}},{text:"      ",hover_event:{action:"show_text",value:""},click_event:{action:"suggest_command",command:"/tell @s idk what ur trying to do by pressing the blank space but go ahead"}},{text:"[ Start Game ]", color:light_purple, bold:true, hover_event:{action:"show_text","value":"Click here to start picking the teams.\n(ADMIN ONLY)"},click_event:{action:"show_dialog",dialog:{type:"confirmation",title:"Are you sure you want to do this?",no:{label:"Fuh naw",action:{type:"run_command",command:"trigger PM_Shop set 10"},width:700},yes:{label:"Lets get it started",tooltip:"Start the game.. I guest..",width:150,action:{type:"run_command",command:"function pointmatch:game/team/choose_team"}},body:{type:"plain_message",contents:" Are you sure you want to start Pointmatch? \n When You press that lil button then it will start the option to pick the teams. \n Yes you have to press this everytime the game/round ends. \n Yes you will be prompted this again. \n Yes you need to do it everythime. \n Goodluck. \n\n\n This will run \n pointmatch:game/team/choose_team.mcfunction. ",width:900},can_close_with_escape:true}}}]
tellraw @a [{text:"[ Debug Menu (Admin Only) ]", bold:true, color:"red",hover_event:{action:"show_text",value:"Opens the debugging menu."}, font:"default",underlined:true,click_event:{action:"suggest_command",command:"/function pointmatch:debug/debugmenu"}}]
#tellraw @a [{"text":"[ Grant 50 Points ]","color":"yellow","bold":true,"hover_event":{"action":"show_text","value":{"text":"Click to grant yourself 50 points!","color":"gold"}},"click_event":{"action":"run_command","command":"scoreboard players add @s PM_Points 50"}}]
#tellraw @a [{"text":"===============================","color":"gold"}]
