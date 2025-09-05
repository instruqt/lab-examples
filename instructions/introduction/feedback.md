# Slow Feedback and Limited Debuggability

Feedback loop when creating content is very slow, time consuming and with limited visibility into the problems.

## Unclear or cryptic errors

```shell
2023-10-11T08:09:04Z vsltcifyuvyt ERROR: setup-workstation: Error running script: Process exited with status 1
2023-10-11T08:09:04Z vsltcifyuvyt ERROR: setup failed: Process exited with status 1
2023-10-11T08:16:17Z rauwfhtyybew ERROR: setup-workstation: Error running script: Process exited with status 1
2023-10-11T08:16:17Z rauwfhtyybew ERROR: setup failed: Process exited with status 1
2023-10-11T08:21:36Z oidivi2072b1 ERROR: setup-workstation: Error running script: Process exited with status 1
2023-10-11T08:21:36Z oidivi2072b1 ERROR: setup failed: Process exited with status 1
2023-10-11T08:35:19Z eol8rgwxojgs ERROR: setup-workstation: Error running script: Process exited with status 1
2023-10-11T08:35:19Z eol8rgwxojgs ERROR: setup failed: Process exited with status 1
2023-10-11T08:36:14Z oebddiqvxhuh ERROR: setup-workstation: Error running script: Process exited with status 1
2023-10-11T08:36:14Z oebddiqvxhuh ERROR: setup failed: Process exited with status 1
```

## Bash-Fu Skills Needed

```shell
#!/usr/bin/env bash

# Fail on any error during execution and show what is being executed
set -e, -u, -x, -o pipefail
```

## Sometimes have to debug platform internals

```shell
2023-10-04T12:16:13Z emeylfm7jboh INFO: Setting up environment
2023-10-04T12:16:13Z emeylfm7jboh INFO: Running terraform init; workdir: /terraform/1aqk0bes7rxe/emeylfm7jboh/plans/core
2023-10-04T12:16:13Z emeylfm7jboh ERROR: Terraform init failed: exit status 1

Error: the string provided in credentials is neither valid json nor a valid file path
2023-10-04T12:16:13Z emeylfm7jboh ERROR: Track setup failed: exit status 1

Error: the string provided in credentials is neither valid json nor a valid file path
2023-10-04T12:17:08Z emeylfm7jboh INFO: executing track lifecycle script
2023-10-04T12:17:08Z emeylfm7jboh INFO: All scripts completed for action: cleanup
2023-10-04T12:17:08Z emeylfm7jboh INFO: Running terraform init; workdir: /terraform/1aqk0bes7rxe/emeylfm7jboh/plans/core
2023-10-04T12:17:15Z emeylfm7jboh INFO: Terraform has been successfully initialised.
2023-10-04T12:17:15Z emeylfm7jboh INFO: Running terraform destroy; workdir: /terraform/1aqk0bes7rxe/emeylfm7jboh/plans/core
2023-10-04T12:17:34Z emeylfm7jboh INFO: Terraform destroy succeeded
```

## Logging lags and can be out of order

```shell
$ instruqt track logs --since -2m
==> Finding track by slug: hashicorp/vault-managing-secrets-and-moving-to-cloud
==> Tailing logs for track 'hashicorp/vault-managing-secrets-and-moving-to-cloud' (ID: gc5ak3quhakx)
2023-10-02T14:10:11Z f6rw5hrkcwct INFO: executing track lifecycle script
2023-10-02T14:10:11Z f6rw5hrkcwct INFO: All scripts completed for action: cleanup
2023-10-02T14:10:12Z f6rw5hrkcwct INFO: Running terraform init; workdir: /terraform/gc5ak3quhakx/f6rw5hrkcwct/plans/core
2023-10-02T14:10:18Z f6rw5hrkcwct INFO: Terraform has been successfully initialised.
2023-10-02T14:10:18Z f6rw5hrkcwct INFO: Running terraform destroy; workdir: /terraform/gc5ak3quhakx/f6rw5hrkcwct/plans/core
2023-10-02T14:10:28Z f6rw5hrkcwct INFO: Terraform destroy succeeded
```
