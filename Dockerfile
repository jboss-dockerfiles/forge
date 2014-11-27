# Use latest jboss/base-jdk:7 image as the base
FROM jboss/base-jdk:7

# The maintainer of this Docker image 
MAINTAINER JBoss Forge Team <forge@redhat.com>

# Add the JBoss Forge distribution to /opt, and make forge the owner of the extracted tar content
# Make sure the distribution is available from a well-known place
RUN curl http://forge.jboss.org/sh | sh && mv $HOME/forge/forge-distribution-*/* /opt/jboss/forge && rm -r $HOME/forge/forge-distribution-*

# Set the FORGE_HOME env variable
ENV FORGE_HOME /opt/jboss/forge

# Set the default command to run on boot
# This will boot the Forge CLI
CMD ["/opt/jboss/forge/bin/forge"]

