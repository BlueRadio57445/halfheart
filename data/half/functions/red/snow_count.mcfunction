scoreboard players remove @a[scores={snow_will_count=1..}] snow_will_count 1
title @a[scores={snow_will_count=1..}] actionbar [{"text":"", "italic":false}, {"text":"踏雪意志剩餘時間"}, {"score":{"objective":"snow_will_count","name":"*"},"color": "aqua"}]
schedule function half:red/snow_count 1s