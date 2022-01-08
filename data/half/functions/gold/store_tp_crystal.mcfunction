#@S是未充能的傳送水晶
data modify entity @s Item.id set value "amethyst_shard"
data modify entity @s Item.tag.display set value {Name:'{"text":"已充能的傳送水晶", "italic":false}', Lore:['{"text":"Q鍵使用", "color":"gray", "italic":false}', '[{"italic":false, "text":""}, {"text":"注意:", "color":"red"}, {"text":"已綁定玩家，小心不要落入別人手中", "color":"gray"}]', '[{"italic": false, "text":""}, {"text":"消耗:", "color":"gray"}, {"text":"❤*2.5", "color":"yellow"}]']}
data modify entity @s Item.tag.tp_pos set from entity @s Pos
data modify entity @s Item.tag.tp_owner set from entity @s Thrower
tag @s add stored_tp