# JBoss Forge Docker image

This is a Dockerfile with [JBoss Forge](http://forge.jboss.org/).

## Usage

To boot it

    docker run -it jboss/forge

## Image internals

This image extends the [`jboss/base-jdk:7`](https://github.com/JBoss-Dockerfiles/base-jdk/tree/jdk7) image which adds the OpenJDK distribution on top of the [`jboss/base`](https://github.com/JBoss-Dockerfiles/base) image. Please refer to the README.md for selected images for more info.

JBoss Forge is installed in the `/opt/jboss/forge` directory.

## Source

The source is [available on GitHub](https://github.com/JBoss-Dockerfiles/forge).

## Issues

Please report any issues or file RFEs on [JIRA](https://issues.jboss.org/browse/FORGE).
