-- title:  MenuSys
-- author: Ender Kerman
-- desc:   Preparation for Reference
-- script: lua

--var declarations
--input
local up,down,left,right

--output
local title, text="",""

--process
local cursor=1
local index={}
local currentDir={}

--data
local text00,text01,text02,text03,text04,text05,text06,text07,text08={[0]=""},{[0]=""},{[0]=""},{[0]=""},{[0]=""},{[0]=""},{[0]=""},{[0]=""}
local sub2a={[0]="title sub2a",[1]=text01,[2]=text02}
local sub2b={[0]="title sub2b",[1]=text03,[2]=text04}
local sub2c={[0]="title sub2c",[1]=text05,[2]=text06}
local sub2d={[0]="title sub2d",[1]=text07,[2]=text08}
local sub1a={[0]="title sub1a",[1]=sub2a,[2]=sub2b}
local sub1b={[0]="title sub1b",[1]=sub2c,[2]=sub2d}
local menu={[0]="Main",[1]=sub1a,[2]=sub1b}
currentDir=menu

--function decalrations
function TIC()
	--taking inputs
	up=btnp(0)
	down=btnp(1)
	left=btnp(2)
	right=btnp(3)

	--processing
	--refresh cursor location and index
	if up or down then  UpdCursor() end
	if left or right then
		UpdIndex()
		LoadCurrentDir() --reload currentDir
	end
	--get title according to index
	GetTitle()
	--get text
	GetText()
	--outputs
	cls()
	--draw cursor
	DrawCursor()
	--print title
	print(title,0,0)
	--print text
	print(text,84,20)
	--debug
	

end

function UpdCursor()
	if up and cursor>1 then 
		cursor=cursor-1 --move up cursor
	end
	if down then 
		cursor=cursor+1 --move down cursor
	end
	if cursor > #currentDir then 
		cursor=#currentDir --check if cursor is too big
	end
	trace(cursor.."/"..#currentDir)
end

function UpdIndex()
	if left then table.remove(index) end --goes up level in menu
	if right and currentDir[cursor][1]~=nil then table.insert(index,cursor) end --goes down a level in menu

end

function LoadCurrentDir()
	currentDir=menu
	for i,v in pairs(index) do
		currentDir=currentDir[v]
	end
end

function GetTitle()
	title="Test Title"
	title=currentDir[0]
end

function GetText()
	text="testtext"
	
end

function DrawCursor()
	
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

