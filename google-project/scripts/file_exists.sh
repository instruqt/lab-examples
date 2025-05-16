#!/bin/sh
cat <<-EOF > /tmp/test.sh
ssh -i "$key" -o StrictHostKeyChecking=no "$user@$host" 'test -f /tmp/hello'
EOF

ssh -i "$key" -o StrictHostKeyChecking=no "$user@$host" 'test -f /tmp/hello'
