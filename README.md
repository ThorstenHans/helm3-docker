# Helm3 Docker Image

This docker image comes with Helm3 and kubectl installed. You can specify the desired version of Helm by setting the `HELM_VERSION` var. It defaults to `3.0.0-beta.3`

## Basic Usage Instructions

### Default (prints Helm3 help)

```bash
    docker run --rm -it thorstenhans/helm3

```

### Execute custom Helm3 command

```bash
docker run --rm -it --entrypoint "" thorstenhans/helm3 helm version

```

### Execute kubectl command

```bash
docker run --rm -it --entrypoint "" thorstenhans/helm3 kubectl version

```
