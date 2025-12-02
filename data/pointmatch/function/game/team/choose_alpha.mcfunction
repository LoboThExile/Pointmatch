scoreboard players set @s PM_PickTeam 0

# 1. Player is already on Alpha
execute if entity @s[team=PM_Alpha] run tellraw @s "You are already on this team!"
execute if entity @s[team=PM_Alpha] run trigger PM_PickTeam set 1
execute if entity @s[team=PM_Alpha] run return 0

# 2. Player is already on Bravo (can't join Alpha)
execute if entity @s[team=PM_Bravo] run tellraw @s "You cannot join Alpha because you are already on Bravo!"
execute if entity @s[team=PM_Bravo] run trigger PM_PickTeam set 1
execute if entity @s[team=PM_Bravo] run return 0

# 3. Alpha team is taken
execute if score #game PM_AlphaIsTaken matches 1.. run tellraw @s ["",{"text":"Alpha team is already taken."}]
execute if score #game PM_AlphaIsTaken matches 1.. run trigger PM_PickTeam set 1
execute if score #game PM_AlphaIsTaken matches 1.. run return 0

# 4. Player is in no team → Allow joining Alpha
tellraw @s "Player isn't in a team.. Continuing.."
# Continue Alpha join logic below...
team join PM_Alpha @s
scoreboard players set #game PM_AlphaIsTaken 1

tellraw @a "choose_alpha.mcfunction ran!"
execute as @s run scoreboard players set @s PM_PickTeam 1
