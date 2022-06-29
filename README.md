# n8n workflow automation

This repository contains a working configuration of n8n that can be deployed on Platform.sh and used for workflow automations. It is another n8n configuration with an additional application instance to process your webhooks using our multi-app feature and a different sub-domain - `hook.{domain}`. In order to have them working together, they need to share the same encryption key. In order for this configuration to work on Platform.sh, you need to have a Medium plan or higher, since we have 2 app and worker instances.

You can create one with the [Platform.sh CLI](https://docs.platform.sh/gettingstarted/introduction/own-code/cli-install.html) and this command before your first deploy:

`platform variable:create -y --level project --sensitive true --name env:N8N_ENCRYPTION_KEY --value $(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 30) --visible-build true --visible-runtime true`

## .environment
- By default, HTTP basic authentication is enabled and configured as n8n:n8n. You can modify that on `.environment` before deploying.
- The /metrics endpoint is disabled by default, but it's possible to enable it using the `N8N_METRICS` environment variable on `.environment` before deploying.

Documentation: [Platform.sh](https://docs.platform.sh/) | [n8n](https://docs.n8n.io/)

Github: [Platform.sh](https://github.com/platformsh/) | [n8n](https://github.com/n8n-io/)

