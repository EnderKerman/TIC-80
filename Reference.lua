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

--Proirity
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

--repeat...until... loop
=== Error Handling ===
--------------TIC Reference-------------
=== Functions ===
-General
--TIC()
The most important function in a TIC
program. It's called 60 times per second
when the program runs.

--scanline()
-Drawing on Screen
--cls
--print
--spr
--font
-Sound

=== Using Built-in Editors ===
-The Terminal
--Commands
---help
	Shows command list
-Code Editor
-Sprite Editor
-Map Editor
-SFX Editor
-Music Editor
------------Reference Ends--------------
]]
