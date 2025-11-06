scoreboard players set #game PM_Ingame 1
tellraw @a [{text:"Choose a team...",bold:true,color:gold}]
tellraw @a [{text:"[Team Bravo]",color: red,bold:true,click_event:{action:"run_command",command:"say hi"}}]