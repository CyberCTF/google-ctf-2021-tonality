#!/bin/sh
# The server sends the two messages of the challenge.
# The service runs the challenge in nsjail for each connection and greets the player first.
(sleep 4) | curl -sS --max-time 6 telnet://challenge:1337 2>/dev/null | grep -q "Server says 1+1=2"
