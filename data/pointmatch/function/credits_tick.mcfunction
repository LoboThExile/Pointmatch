############# Will run every tick.
execute as @a run scoreboard players enable @a PM_CreditsPage

execute as @a[scores={PM_CreditsPage=1}] run function pointmatch:credits/credits
execute as @a[scores={PM_CreditsPage=2}] run function pointmatch:credits/credits_page2