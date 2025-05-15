#!/usr/bin/env python3
import sys
import time
import re

DEFAULT_COLOR = 203
DELAY = 0.003


def print_animated(text, color=DEFAULT_COLOR):
    tokens = re.split(r"(#:\d+(?:\.\d+)?)", text)
    for token in tokens:
        if not token:
            continue
        if token.startswith("#:"):
            try:
                time.sleep(float(token[2:]))
            except ValueError:
                continue
        else:
            for c in token:
                sys.stdout.write(f"\033[38;5;{color}m{c}\033[0m")
                sys.stdout.flush()
                time.sleep(DELAY)
    print()


def main():
    if sys.stdin.isatty():
        print("animcat: piped text")
        sys.exit(1)

    text = sys.stdin.read()
    print_animated(text)


if __name__ == "__main__":
    main()
