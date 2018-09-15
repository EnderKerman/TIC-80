-- title:  MenuSys
-- author: Ender Kerman
-- desc:   Preparation for Reference
-- script: lua

t=0
x=96
y=24

function TIC()

	if btn(0) then y=y-1 end
	if btn(1) then y=y+1 end
	if btn(2) then x=x-1 end
	if btn(3) then x=x+1 end

	cls(13)
	spr(1+t%60//30*2,x,y,14,3,0,0,2,2)
	print("Menu In Progress",84,84)
	t=t+1
end

-- <TILES>
-- 001:efffffffff222222f8888888f8222222f8fffffff8ff0ffff8ff0ffff8ff0fff
-- 002:fffffeee2222ffee88880fee22280feefff80fff0ff80f0f0ff80f0f0ff80f0f
-- 003:efffffffff222222f8888888f8222222f8fffffff8fffffff8ff0ffff8ff0fff
-- 004:fffffeee2222ffee88880fee22280feefff80ffffff80f0f0ff80f0f0ff80f0f
-- 017:f8fffffff8888888f888f888f8888ffff8888888f2222222ff000fffefffffef
-- 018:fff800ff88880ffef8880fee88880fee88880fee2222ffee000ffeeeffffeeee
-- 019:f8fffffff8888888f888f888f8888ffff8888888f2222222ff000fffefffffef
-- 020:fff800ff88880ffef8880fee88880fee88880fee2222ffee000ffeeeffffeeee
-- </TILES>

-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <SFX>
-- 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000304000000000
-- </SFX>

-- <PALETTE>
-- 000:140c1c44243430346d4e4a4e854c30346524d04648757161597dced27d2c8595a16daa2cd2aa996dc2cadad45edeeed6
-- </PALETTE>

--[[
--var declarations
--input
local up,down,left,right

--output
local title="", text=""

--process
local cusor=0,index={}

--data
local text00={0:""},text01={0:""},text02={0:""},text03={0:""},text04={0:""},text05={0:""},text06={0:""},text07={0:""},text08={0:""}
local sub2a={0:"title sub2a",1:text01,2:text02}
local sub2b={0:"title sub2b",1:text03,2:text04}
local sub2c={0:"title sub2c",1:text05,2:text06}
local sub2d={0:"title sub2d",1:text07,2:text08}
local sub1a={0:"title sub1a".1:sub2a,2:sub2b}
local sub1b={0:"title sub1b".1:sub2c,2:sub2d}
local memu={0:"Main",i:sub1a,2:sub1b}

]]