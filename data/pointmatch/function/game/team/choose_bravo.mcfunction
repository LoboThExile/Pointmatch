scoreboard players set @s PM_PickTeam 0

# 1. Player is already on Bravo
execute if entity @s[team=PM_Bravo] run tellraw @s "You are already on this team!"
execute if entity @s[team=PM_Bravo] run trigger PM_PickTeam set 1
execute if entity @s[team=PM_Bravo] run return fail

# 2. Player is already on Alpha (can't join Bravo)
execute if entity @s[team=PM_Alpha] run tellraw @s "You cannot join Bravo because you are already on Alpha!"
execute if entity @s[team=PM_Alpha] run trigger PM_PickTeam set 1
execute if entity @s[team=PM_Alpha] run return fail

# 3. Bravo team is taken
execute if score #game PM_BravoIsTaken matches 1.. run tellraw @s ["",{"text":"Bravo team is already taken."}]
execute if score #game PM_BravoIsTaken matches 1.. run trigger PM_PickTeam set 1
execute if score #game PM_BravoIsTaken matches 1.. run return fail

# 4. Player is in no team → Allow joining
tellraw @s "Player isn't in a team.. Continuing.."
# Continue the Bravo join logic here...
team join PM_Bravo @s
scoreboard players set #game PM_BravoIsTaken 1

tellraw @a "choose_bravo.mcfunction ran!"
