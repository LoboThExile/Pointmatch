execute as @s run scoreboard players set @s PM_CreditsPage 0
tellraw @s "\n\n\n\n\n\n"
tellraw @s {"text":"[ Go back ]",click_event:{action:"run_command",command:"trigger PM_Shop set 1"}}
tellraw @s [{text:"+====[Credits]====+",color:gold,bold:true}]
tellraw @s [{text:"----Datapack-Creators----", color:yellow}]
tellraw @s [{bold:true,text:"[N1NJ4ZW0LF]",hover_event:{action:"show_text",value:{"text":"Without him, this project wouldn't exist!","color":"aqua"}},color:green},{text:" - Idea originator. Full credit goes to him.",color:"gray"}]
tellraw @s [{bold:false,text:"[LoboThExile]",hover_event:{action:"show_text",value:{"text":"The sole developer of this project.\nCoded the entire project and polished descriptions.","color":"aqua"}},color:green},{text:" - Coded the entire project.",color:"gray"},{text:" (Datapack Dev)",bold:true,color:gray}]
tellraw @s [{text:"----Songs (Shop)----", color:yellow}]
#tellraw @s [{text:"[USER]",hover_event:{action:"show_text",value:{"text":"[ADD WHERE IT WAS USED IN.]",color:"aqua"}},color:green},{text:" - [SONG]",color:"gray"}]
tellraw @s [{text:"[Toby Fox]",hover_event:{action:"show_text",value:{"text":"Used in: Shop",color:"aqua"}},color:green,click_event:{action:"open_url",url:"https://www.youtube.com/watch?v=D83BxptHcRc"}},{text:" - [Hip Shop]",color:"gray"}]
tellraw @s [{text:"[nicopatty]",hover_event:{action:"show_text",value:{"text":"Used in: Shop",color:"aqua"}},color:green,click_event:{action:"open_url",url:"https://www.youtube.com/watch?v=zNHC_efucwo"}},{text:" - [nico's nextbots ost vol.2 - shop]",color:"gray"}]
tellraw @s [{text:"[nicopatty]",hover_event:{action:"show_text",value:{"text":"Used in: Shop",color:"aqua"}},color:green,click_event:{action:"open_url",url:"https://www.youtube.com/watch?v=ENWFOepUlFw"}},{text:" - [untitled tag game ost - cha-ching!!]",color:"gray"}]
# tellraw @s [{text:"----Songs (Other)----", color:yellow}]
# tellraw @s [{text:"[Toby Fox]",hover_event:{action:"show_text",value:{"text":"Used in: Death",color:"aqua"}},color:green,click_event:{action:"open_url",url:"https://www.youtube.com/watch?v=h1wSPmlZV-w"}},{text:" - [Determination]",color:"gray"}]
# tellraw @s [{text:"[AZALI]",hover_event:{action:"show_text",value:{"text":"Used in: Battle",color:"aqua"}},color:green,click_event:{action:"open_url",url:"https://www.youtube.com/watch?v=ILh0zEfqSQM"}},{text:" - [DECISIVE BATTLE]",color:"gray"}]
# tellraw @s [{text:"----Songs (Unused)----", color:yellow}]
tellraw @s [{text:"More ->>         ",color:green},{text:"[>]",bold:true,color:red,hover_event:{action:"show_text",value:{color:blue,text:"Click here to go to the next page",bold:true}},click_event:{action:"run_command",command:"trigger PM_CreditsPage set 2"}}]


