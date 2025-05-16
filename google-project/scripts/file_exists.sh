#!/bin/sh
# ssh -i "$key" -o StrictHostKeyChecking=no "$user@$host" 'test -f /tmp/hello'
cat <<EOF > test.sh
echo "break on purpose"
EOF 

echo "bla"