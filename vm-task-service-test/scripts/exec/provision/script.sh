#!/bin/sh
set -e

# Stands in for the V1 track-level setup script computing values (URLs,
# generated passwords, etc) that later get surfaced into challenge markdown
# via `agent variable set`. Here we just prove output flows through exec on
# a vm target, to be referenced from page.variables as
# resource.exec.provision.output.GREETING
echo "GREETING=hello from the workshop vm" >> "$EXEC_OUTPUT"
