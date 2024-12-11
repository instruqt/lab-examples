# Dependencies and scripting

The sandbox lifecycle requires users to handle dependencies themselves, which requires knowledge of platform internals.

“Our scripts (especially setup scripts) do not provide default information to help with debugging and also sometimes run prematurely. Currently it is internal best practice to include some snippets of code when running scripts to ensure that they run successfully (note: we do not provide these code best practice snippets by default).”

“Working on an existing lab and noticed that, at least once, the setup script of challenge #2 started before the previous challenge cleanup completed. You can see it in the log lines below. I've not been able to reproduce yet. What can cause this? How can I prevent it?”

## Handling system dependencies manually. 

```shell
#!/usr/bin/env bash

# Wait for the Instruqt host bootstrap to finish
until [ -f /opt /instruqt/bootstrap/host-bootstrap-completed ]; do
 echo "Waiting for instruqt bootstrap"
 sleep 1
done
```

## Handling runtime dependencies manually. 

```shell
while ! curl -s --fail -o /dev/null http://localhost:8001/api
do
  sleep 1
Done

while ! curl -s --fail -o /dev/null http://localhost:8080/v1/status
do
  sleep 1
done

etc...
```
