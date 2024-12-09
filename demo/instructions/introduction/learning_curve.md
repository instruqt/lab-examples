# Steep Learning Curve

- Almost every piece of content requires starting from scratch
- They have to handle errors in script execution themselves
- Have to build custom images for best end user experience, requiring strong automation skills

### Examples

Basic bash plumbing.

```shell
#!/bin/bash -l
set -euo pipefail
```

They have to source the std lib each time.

```shell
source /usr/local/bin/ea-instruqt-bash-functions.sh
```

They have to prepare history to check if things have been done.

```shell
HISTFILE=/root/.bash_history
set -o history
```
