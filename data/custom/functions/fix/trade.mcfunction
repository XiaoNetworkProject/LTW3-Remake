# 贸易专家地形生成错误修复

# 锁定玩家
effect give @a[team=playing] blindness 1000000 255 true
effect give @a[team=playing] night_vision 1000000 255 true
effect give @a[team=playing] slowness 1000000 255 true

# 提示
#tellraw @a[team=playing] ["\n",{"text":">> ","color":"aqua","bold":true},"检测到当前对局小游戏为 ",{"text":"贸易专家","color":"green","bold":true},"为防止出现错误, 正在尝试重新生成地形, 请稍等!"]

# 重新生成矿物
setblock 1000 255 5000 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"LTCat",rotation:"NONE",posX:0,mode:"LOAD",posY:-24,sizeX:32,posZ:0,integrity:1.0f,showair:0b,name:"mini:diamond_base",sizeY:25,sizeZ:32,showboundingbox:1b}
setblock 1000 255 5001 redstone_block
setblock 1028 252 5030 minecraft:redstone_block

# 解锁玩家
effect clear @a[team=playing] blindness
effect clear @a[team=playing] night_vision
effect clear @a[team=playing] slowness

# 继续玩家加入流程
function mini:trade/player_enter

# 管理员提示
#tellraw @a[team=debugging] ["\n",{"text":">> ","color":"green","bold":true},"地形生成成功, 距离正式开局还有 5s 的延迟, 请管理员自行检查是否生成成功, 下面为快捷操作命令"]
#tellraw @a[team=debugging] ["\n",{"text":">> ","color":"green","bold":true},{"text":"[重新生成]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function custom:fix/trade"}},{"text":"[强制终止游戏]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function ltw:init"}}]
#tellraw @a[team=debugging] ["\n",{"text":">> ","color":"aqua","bold":true},"本消息仅管理可见"]