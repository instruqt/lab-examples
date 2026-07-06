# VM Task + Service Test

This scratch lab checks three things the [`coder-agents-ai-governance`](https://play.instruqt.com/manage/jparton-challenge/tracks/coder-agents-ai-governance) V1 track migration
depends on:

1. A `service` tab can target a `vm` resource directly (the **Workshop HTTP** tab).
2. A `task` condition's `check` script can target a `vm` resource directly (below),
   without needing a sidecar container.
3. An `exec` resource's `$EXEC_OUTPUT` can flow into page content via `page.variables`.

Exec output variable: {{greeting}}

<instruqt-task id="http_ready">
  Wait for the workshop VM to finish booting, then click Check.
</instruqt-task>
