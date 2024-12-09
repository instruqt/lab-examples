# Content Format Limitations

Customers want to do more with their content than our current toolkit supports.

- Forced lineair flow, with must pass challenges
- Limited styling and theming options
- Lack of rich content types in assignments
- Single, fixed layout option

## Hacking Skip Functionality

They have built in hacks that allows you to skip scripts by creating files.

```shell
if [ -f /tmp/skip-check ]; then
 rm /tmp/skip-check
 exit 0
fi

if [ -f /tmp/skip-cleanup ]; then
 exit 0
fi
```

## Hacking Assets Support

They have built entire tracks that collect all hacks for easier distribution.

```markdown
---
slug: track-assets
---

The Instruqt CLI currently only uploads media assets. We can get it to upload a css file by linking to it as a (broken) image.

Also, the CLI automatically converts the relative path to an asset to a full url in the format:
https://play.instruqt.com/assets/tracks/[TRACK_ID]/[ASSET_HASH]/assets/file.name

If the file is modified, the asset_hash will change and you will need to update any links to it.

Because our workflow sometimes modifies track IDs, I thought it was best to store the shared asset(s) in a dedicated track that shouldn't have a changing id.
Insert this link into the assignment.md of your challenge to use the shared style.css file:

&lt;link href="&lt;replace_with_link_below&gt;" rel="stylesheet"&gt;
![Copy style.css link address](../assets/style.css)
```

And use those resources in all their tracks.

```markdown
<link href="https://play.instruqt.com/assets/tracks/hwckp0sgmmyg/aeaf29137dc322e07be4cc4cd1b3205b/assets/style.css" rel="stylesheet">

<div class="box callout info">
If you have saved the value of your API key from a previous lab, you can re-use it here. Otherwise, follow the link provided in the terminal output to create a new API key.
</div>

<pre class="terminal">
gh auth login --with-token <<< <blue>ACCESS_TOKEN</blue>
</pre>

<pre class="terminal">
<span style="font-weight:bold">github.com</span>
 <span style="color:green">✓</span> Logged in to github.com as <span style="color:grey;font-weight:bold"> GITHUB-USER </span> (/root/.config/gh/hosts.yml)
 <span style="color:green">✓</span> Git operations for github.com configured to use <span style="font-weight:bold">https</span> protocol.
 <span style="color:green">✓</span> Token: *******************
 <span style="color:green">✓</span> Token scopes: delete_repo, read:org, repo, user, workflow
</pre>
```
