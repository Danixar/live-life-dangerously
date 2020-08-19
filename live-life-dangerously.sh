#!/bin/zsh

fswatch -0 test/ | xargs -0 -n 1 -I {} ./russian-roulette.sh {} &

# Pick your Poison
if [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # ...
elif [[ "$OSTYPE" == "cygwin" ]]; then
        # POSIX compatibility layer and Linux environment emulation for Windows
elif [[ "$OSTYPE" == "msys" ]]; then
        # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
elif [[ "$OSTYPE" == "win32" ]]; then
        # I'm not sure this can happen.
elif [[ "$OSTYPE" == "freebsd"* ]]; then
        # ...
else
        # Unknown.
fi