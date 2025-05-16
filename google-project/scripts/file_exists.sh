#!/bin/sh
ssh -i "$key" -o StrictHostKeyChecking=no "$user@$host" 'test -f /tmp/hello'