# Hidden Dependencies and Complexity

The sandbox lifecycle requires users to handle dependencies themselves, which requires knowledge of platform internals.
Flexibility comes with great complexity, however this complexity is current implicit, making it hard to manage and support.

### Rigid File structure

- Directory names must match challenge slugs
- Ordering using numbered prefixes
- Hostnames in script names
- Lifecycle prefix mandatory, no way to split scripts into multiple files

![Rigid File Structure](/assets/rigid_structure.png)

### Hidden Complexity

- Lab definition spread out over many places and in different formats (yaml, mardown, frontmatter)

![Hidden Complexity](/assets/assignment_frontmatter.png)

### Implicit Dependencies

- Need knowledge of platform internals to handle dependencies
- Scripting needed to handle health checks
- Non-declaritive dependencies are fragile and cumbersome

![Implicit Dependencies](/assets/setup_deps.png)
