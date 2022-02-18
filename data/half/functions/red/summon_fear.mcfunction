#0
execute as @s[tag=fear_0-1] run summon pig ~ ~ ~ {DeathLootTable:"half:essence"}
execute as @s[tag=fear_0-2] run summon cow ~ ~ ~ {DeathLootTable:"half:essence"}
execute as @s[tag=fear_0-3] run summon chicken ~ ~ ~ {DeathLootTable:"half:essence"}
execute as @s[tag=fear_0-4] run summon sheep ~ ~ ~ {DeathLootTable:"half:essence"}

#1
execute as @s[tag=fear_1-1] run summon zombie ~ ~ ~ {DeathLootTable:"half:essence",ArmorItems:[{id:"iron_boots",Count:1b},{id:"iron_leggings",Count:1b},{id:"iron_chestplate",Count:1b},{id:"zombie_head",Count:1b}]}
execute as @s[tag=fear_1-2] run summon skeleton ~ ~ ~ {DeathLootTable:"half:essence",ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:"TNT"}}],HandItems:[{id:"bow",Count:1b,tag:{Enchantments:[{id:"flame",lvl:1s}]}}]}
execute as @s[tag=fear_1-3] run summon spider ~ ~ ~ {DeathLootTable:"half:essence"}
execute as @s[tag=fear_1-4] run summon creeper ~ ~ ~ {DeathLootTable:"half:essence",powered:1b}
execute as @s[tag=fear_1-5] run summon cave_spider ~ ~ ~ {DeathLootTable:"half:essence"}

#2
execute as @s[tag=fear_2-1] run summon phantom ~ ~ ~ {DeathLootTable:"half:essence",Size:5}
execute as @s[tag=fear_2-2] run summon drowned ~ ~ ~ {IsBaby:1b,HandItems:[{id:"trident",Count:1b}],DeathLootTable:"half:essence"}
execute as @s[tag=fear_2-3] run summon illusioner ~ ~ ~ {DeathLootTable:"half:essence",HandItems:[{id:"bow",Count:1b}]}
execute as @s[tag=fear_2-4] run summon evoker ~ ~ ~ {DeathLootTable:"half:essence"}

#3
execute as @s[tag=fear_3-1] run summon guardian ~ ~ ~ {DeathLootTable:"half:essence"}
execute as @s[tag=fear_3-1] run setblock ~ ~ ~ water keep
execute as @s[tag=fear_3-2] run summon magma_cube ~ ~ ~ {DeathLootTable:"half:essence",Size:4}
execute as @s[tag=fear_3-2] run setblock ~ ~ ~ lava keep
execute as @s[tag=fear_3-3] run summon phantom ~ ~ ~ {DeathLootTable:"half:essence",Passengers:[{id:"skeleton",DeathLootTable:"half:essence",HandItems:[{id:"bow",Count:1b,tag:{Enchantments:[{id:"flame",lvl:1s}]}}]}]}
execute as @s[tag=fear_3-4] run summon zombified_piglin ~ ~ ~ {DeathLootTable:"half:essence"}
execute as @s[tag=fear_3-4] run summon zombified_piglin ~ ~ ~ {DeathLootTable:"half:essence"}
execute as @s[tag=fear_3-4] run summon zombified_piglin ~ ~ ~ {DeathLootTable:"half:essence"}
execute as @s[tag=fear_3-4] as @e[type=zombified_piglin,sort=nearest,limit=1] run data modify entity @s AngryAt set from entity @p[team=red_heart]

#4
execute as @s[tag=fear_4-1] run summon iron_golem ~ ~ ~ {DeathLootTable:"half:essence",HasVisualFire:1b}
execute as @s[tag=fear_4-1] as @e[type=iron_golem,sort=nearest,limit=1] run data modify entity @s AngryAt set from entity @p[team=red_heart]
execute as @s[tag=fear_4-2] run summon ravager ~ ~ ~ {DeathLootTable:"half:essence"}
execute as @s[tag=fear_4-3] run summon elder_guardian ~ ~ ~ {DeathLootTable:"half:essence"}
execute as @s[tag=fear_4-3] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 water keep