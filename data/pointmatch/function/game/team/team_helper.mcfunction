execute as @s run scoreboard players set @s PM_PickTeam 0
tellraw @s [{text:"Choose a team...",bold:true,color:gold}]
tellraw @s [{text:"[Team Alpha]",color: blue,bold:true,click_event:{action:"run_command",command:"trigger PM_PickTeam set 250"},hover_event:{action:"show_text",value:"Click here to pick team Alpha..."}}]
tellraw @s [{text:"[Team Bravo]",color: red,bold:true,click_event:{action:"run_command",command:"trigger PM_PickTeam set 500"},hover_event:{action:"show_text",value:"Click here to pick team Bravo..."}}]
tellraw @s "+========================+"
tellraw @s [{text:"[Start game]",color: green,bold:true,click_event:{action:"run_command",command:"function pointmatch:game/startcountdown"},hover_event:{action:"show_text",value:"Click here to Actually start the game.."}}]