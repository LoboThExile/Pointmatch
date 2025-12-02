execute as @s run scoreboard players set @s PM_CreditsPage 0
tellraw @s "\n\n\n\n\n\n"

tellraw @s [{text:"+====[Credits]====+",color:gold,bold:true}]
tellraw @s [{text:"----Songs (Other)----", color:yellow}]
tellraw @s [{text:"[Toby Fox]",hover_event:{action:"show_text",value:{"text":"Used in: Death",color:"aqua"}},color:green,click_event:{action:"open_url",url:"https://www.youtube.com/watch?v=h1wSPmlZV-w"}},{text:" - [Determination]",color:"gray"}]
tellraw @s [{text:"[AZALI]",hover_event:{action:"show_text",value:{"text":"Used in: Battle",color:"aqua"}},color:green,click_event:{action:"open_url",url:"https://www.youtube.com/watch?v=ILh0zEfqSQM"}},{text:" - [DECISIVE BATTLE]",color:"gray"}]
tellraw @s [{text:"[FLAVOR FOLEY]",hover_event:{action:"show_text",value:{"text":"Used in: Weather (Rain)",color:"aqua"}},color:green,click_event:{action:"open_url",url:"https://www.youtube.com/watch?v=M7VSEZOQIlg"}},{text:" - [weathergirl ft. Elanor Forte]",color:"gray"}]
tellraw @s [{text:"----Songs (Unused)----", color:yellow}]
tellraw @s [{text:"[ImperfectNORE]",hover_event:{action:"show_text",value:{"text":"Used in: ???",color:"aqua"}},color:green,click_event:{action:"open_url",url:"https://www.youtube.com/watch?v=cibBLIyVZj0"}},{text:" - [ONE BOUNCE]",color:"gray"}]
tellraw @s [{text:"[MandoCats]",hover_event:{action:"show_text",value:{"text":"Used in: Battle",color:"aqua"}},color:green,click_event:{action:"open_url",url:"https://www.youtube.com/watch?v=cibBLIyVZj0"}},{text:" - [FOLLY RED - Doctor4t's Unoffi...]",color:"gray"}]
tellraw @s [{text:"[IShowSpeed]",hover_event:{action:"show_text",value:{"text":"Used in: Shop (this is actually in the shop)\nI, I, I\
Ayy, I\n\
Ayy, ayy, ayy\n\
Ayy, headshot, .223\n\
She a baddie, rock CELINE\n\
Let me take her to the back, she wanna look at me\n\
Ayy, headshot, .223\n\
Bed rock, movie scene\n\
Baby, let's turn up in this party, what's a wedding ring?\n\
It's my same haters in the club, we blowing up the scene\n\
It's the same bulls we turning up, we reppin' for the D\n\
All my homies play, puttin' up thirties like it's Steph Curry\n\
Shorty say she wanna blow my whistle like a referee\n\
",color:"aqua"}},color:green,click_event:{action:"open_url",url:"https://www.youtube.com/watch?v=HvYoohC9kVs"}},{text:" - [Headshot / Gas in the trunk]",color:"gray"}]
tellraw @s [{text:"[<]",bold:true,hover_event:{action:"show_text",value:{text:"Click here to go back to the previous",bold:true,color:blue}},click_event:{action:"run_command",command:"trigger PM_CreditsPage set 1"},color:red}]