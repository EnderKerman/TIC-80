-- title:  TIC-Lua Reference
-- author: Ender Kerman and Cynthia
-- desc:   Quick Reference for Beginners
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
	print("Reference In Development",42,84)
	t=t+1
end

------------Reference Begins------------
--[[
--------------Lua Reference-------------
=== Basic Syntax ===

-assign a variable

var=3

-
=== Operators ===
-Logical Operators

--"and"

Returns the second operator if the first one is true
returns the first one if it is false/nil

E.g: a and b

When a = nil:
returns a

When a = false:
returns a

For else:
returns b

--"or"

Returns the second operator if the first one is false/nil
return the first one if it is true

The "or" operator is basically the opposite of "and" operator

E.g: a or b

When a = nil:
returns b

When a = false:
returns b

Else:
returns a

--Priority
"and" operator has a higher propoity than "or"

Therefore "a and b or c" is equivalent with "(a and b) or c"
"a or b and c" is equivalent with "a or (b and c)"

--Statement example: a and b or c
(Equals (a and b) or c)

If a is not false/nil:
"a and b" - a is not false, operator passes b to "or"

b isn't nil/false because it's returned value, so
"b or c" - b is true, returns b

If a is false/nil:
"a and b" - a is false, operator passes a to "or"

"a or c" - a is false, returns c

Therefore "a and b or c" will only return b or c, but not a.

-Algrimetic

-Strings

..   --Links two strings into a new one

"Hello ".."World!" == "Hello World!"

#    --Returns the length of a string

#"Hello"==5

-

=== Functions ===

A function takes 0 or more arguments and
may return something.

Arguments can be anything including 
functions.

-Declaring a Function

function funcName(arg_1,arg_2,...)

	--Statements Here
	return <Something>
end

-Calling a Function

funcName(arg_1,arg_2,...)

=== Variables ===

-Global

Variables are global by default.
They can be accessed and edited anywhere

-Local

A local variable can only be used in its
scope and is destructed upon leaving it.

--Declaring Local Variable

local var
or
local var=3

-Table

table={<something a>,<something b>,...}

Indices begin at 1.

Table can be nested to create multidi-
mentional tables like this:

table={
{a,b,c,d},
{e,f,g,h},
{i,j,k,l}
}

A table can contain anything but nil.

--Accessing Contents in Tables


=== Flow Control ===

-if statement

--Basic Syntax
Like This:

if
	<condition>
then
	<statements>
end

Or like this:

if <condition> then
	<statements>
end

Or this:

if <condition>
then
	<statements>
end

And even this:

if <condition> then <statements> end

--if...then...else...

if
	<condition>
then
	<statements>
else
	<statements>
end

Or you can use elseif:

if
	<condition>
then
        <statements>
elseif
	<conddition>
then
	<statements>
end


-loops
--for loop
There are 2 types of for loop.
---Numeric Loop
---Generic Loop

--while loop
	If the condition evaluates true,
the statements are executed once more.
Else, jump to where the while statement
ends.

---Syntax

while <condition>
do
	<statements>
end

--repeat...until... loop
	Almost the same as while loop, except
that evaluation is done AFTER code 
exucation and that loop breaks when
condition is true.
	It's the only block in Lua that is
not wraped in do ... end keywords.

---Syntax
repeat
	<statements>
until <condition>

=== Error Handling ===
=== Standard Library ===
--------------TIC Reference-------------
version:0.70.5
=== API Functions ===

-General

--TIC()

	The most important function in a TIC
program. It's called 60 times per second
when the program runs.

--scanline()
	Called at every line rendering.
Useful for changing paras between lines.

--OVR()

--init()
	Called once at app starting.

-Inputs







-Outputs
-Drawing on Screen

--cls(num color)
	clears screen with color indicated by
a para.
--print
--spr
--map
--font

-Sound

--sfx()
--music()

-Memory

=== Using Built-in Editors ===

-The Terminal

--Commands
---help
	Shows command list
---wiki
	Open github wiki page in browser
	(Desktop versions only)
---ram
	Show memory info
---exit/quit
	Needless to explain
---new [lua|js|moon|wren|fennel]
	Create a new cart. Use a para to 
	specify its language.
---load <cartname> [sprites | map |
 cover | code | sfx | music | palette]
	load the cart. Use a second para to
	load a part of the cart.
---save [cartname]
	Save current cart as <cartname>.
	<cartname> is required at frst save.
---run
	Run loaded cart
---resume
	resume run cart
---eval/= <statement>
	Run code.
	Note: rusume, not run after using it.
---dir/ls
	The same as they are in Linux.
---cd <dir>
	As in Linux.
---mkdir <directoryName>
	Make Directory.
---folder
	Open working folder in OS
	(Desktop versions only)
---add
	add file from the external.
---get <cartname>
	export .tic file locally.
---export [html | native | sprites | cover | map]
	Export as html or native game(.exe)
	Or export pics as .gif
---import [sprites | cover | map]
	Import from .gif.
---del <filename>
	delete file or dir.
---cls
	clean screen
---demo
	install demo carts
---config
	edit TIC config.
---version
	show current version.
---edit
	open cart editor.
---surf
	open carts browser

-Code Editor

-Sprite Editor

-Map Editor

-SFX Editor

-Music Editor


=== Config ===

=== Hotkeys ===

------------Reference Ends--------------
]]
