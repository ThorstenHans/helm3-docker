# Helm Docker Image

This docker image contains [Helm CLI](https://helm.sh) and [kubectl](https://kubernetes.io). You can specify the desired version of Helm 3, by setting the `HELM_VERSION` var. It currently defaults to `3.4.1`.

## Basic Usage Instructions

### Default behavior

By default, the container will execute `helm`.

```bash
docker run thorstenhans/helm3

```

### Execute Helm sub-commands

You can execute any `helm` sub-command as shown here:

```bash
docker run thorstenhans/helm3 version

```

### Execute kubectl command

You can also invoke any `kubectl` command, by overwriting the entry-point of the container

```bash
docker run --rm -it --entrypoint kubectl thorstenhans/helm3 version

```
