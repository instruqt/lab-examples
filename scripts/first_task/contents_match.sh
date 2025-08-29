#!/bin/sh
CONTENTS=$(cat /tmp/hello)

if [ ! "$CONTENTS" = "world" ]; then
  exit 1
fi