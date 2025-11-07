execute as @s run scoreboard players set @s PM_PickTeam 0
tellraw @a [{text:"Choose a team...",bold:true,color:gold}]
tellraw @a [{text:"[Team Alpha]",color: blue,bold:true,click_event:{action:"run_command",command:"trigger PM_PickTeam set 250"},hover_event:{action:"show_text",value:"Click here to pick team Alpha..."}}]
tellraw @a [{text:"[Team Bravo]",color: red,bold:true,click_event:{action:"run_command",command:"trigger PM_PickTeam set 500"},hover_event:{action:"show_text",value:"Click here to pick team Bravo..."}}]
tellraw @a "+========================+"
tellraw @a [{text:"[Start game]",color: green,bold:true,click_event:{action:"run_command",command:"function pointmatch:game/startcountdown"},hover_event:{action:"show_text",value:"Click here to Actually start the game.."}}]