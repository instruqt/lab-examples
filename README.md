# Instruqt Lab Examples

This repository showcases examples of labs built with Instruqt's new HCL definition format. These labs demonstrate the range of possibilities with the new HCL-based lab definitions - from simple container setups to complex cloud integrations. Each example is self-contained and focuses on specific features of the platform, providing patterns you can use when creating your own labs.

## Example Labs

| Lab | Description | Key Features |
| --- | --- | --- |
| [container-terminal](container-terminal) | Basic Ubuntu container with interactive terminal | Simple container setup, terminal tab |
| [container-service](container-service) | Nginx container with web service tab | Web service integration, port mapping |
| [task](task) | Demonstrates tasks and validation conditions | Task validation, check/solve scripts |
| [quiz](quiz) | Shows different quiz types | Single/multiple choice, hints |
| [demo](demo) | Comprehensive showcase of advanced features | Multiple resources, complex validation |
| [minimal](minimal) | Single container with multiple content options and modules | Module system, content organization |
| [k8s-terminal](k8s-terminal) | Kubernetes cluster with pod deployment tasks | K8s integration, cluster management |
| [google-project](google-project) | Google Cloud integration with Terraform | Cloud provider, service accounts |
| [experimental](experimental) | Basic experimental features lab | Testing new capabilities |
| [skeleton](skeleton) | Minimal template for starting new labs | Best practices template |
| [local](local) | Simple local environment example | Basic setup reference |


## Typical Lab Structure

```
lab-name/
├── main.hcl              # Lab metadata and settings
├── layouts.hcl           # UI layout definitions
├── sandbox.hcl           # Infrastructure resources
├── tabs.hcl              # Interactive tabs
├── pages.hcl             # Content pages
├── tasks.hcl             # Tasks with validation
├── instructions/         # Markdown content
│   ├── intro.md
│   └── chapter1/
│       └── page1.md
└── scripts/              # Validation scripts
    ├── check-task1
    └── solve-task1
```

## Documentation

For full documentation on the new lab definition format, visit [docs.labs.instruqt.com](https://docs.labs.instruqt.com).
