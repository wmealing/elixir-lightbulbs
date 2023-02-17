# Tims room

From: https://www.riddles.com/1002

Riddle:  There are 100 light bulbs 
lined up in a row in a long room. Each bulb has its own switch and is 
currently switched off. The room has an entry door and an exit door. 
There are 100 people lined up outside the entry door. Each bulb is 
numbered consecutively from 1 to 100. So is each person. Person No. 1 
enters the room, switches on every bulb, and exits. Person No. 2 enters 
and flips the switch on every second bulb (turning off bulbs 2, 4, 6, 
...). Person No. 3 enters and flips the switch on every third bulb 
(changing the state on bulbs 3, 6, 9, ...). This continues until all 100
 people have passed through the room. What is the final state of bulb 
No. 64? And how many of the light bulbs are illuminated after the 100th 
person has passed through the room?
            

# Running

$ iex -S mix
Erlang/OTP 25 [erts-13.1.4] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [jit:ns]

Compiling 1 file (.ex)
Generated lightbulbs app
Interactive Elixir (1.14.3) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> TimsRoom.go(64)


iex>  Timsroom.go(64)
LIGHT IS OFF




