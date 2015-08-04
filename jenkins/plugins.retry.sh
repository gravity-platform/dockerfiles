#!/bin/bash

# Parse a support-core plugin -style txt file as specification for jenkins plugins to be installed
# in the reference directory, so user can define a derived Docker image with just :
#
# FROM jenkins
# COPY plugins.txt /plugins.txt
# RUN /usr/local/bin/plugins.sh /plugins.txt
#

set -e

REF=/usr/share/jenkins/ref/plugins
mkdir -p $REF

while read spec || [ -n "$spec" ]; do
    plugin=(${spec//:/ });
    [[ ${plugin[0]} =~ ^# ]] && continue
    [[ ${plugin[0]} =~ ^\s*$ ]] && continue
    [[ -z ${plugin[1]} ]] && plugin[1]="latest"
    echo "Downloading ${plugin[0]}:${plugin[1]}"
    if ! curl -s -L --retry 3 --retry-delay 5 --retry-max-time 32 -f ${JENKINS_UC}/download/plugins/${plugin[0]}/${plugin[1]}/${plugin[0]}.hpi -o $REF/${plugin[0]}.jpi; then
      echo "failed download ${plugin[0]}:${plugin[1]} ...trying permalink"
    elif ! curl -s -L --retry 3 --retry-delay 5 --retry-max-time 32 -f ${JENKINS_UC}/latest/${plugin[0]}.hpi -o $REF/${plugin[0]}.jpi; then
      echo "failed download ${plugin[0]} via permalink ... skipping/permalink to the latest"
    fi
done  < $1
