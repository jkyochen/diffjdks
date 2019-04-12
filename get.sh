#!/bin/bash
set -e

brew install mercurial

mkdir -p jdk
cd jdk

# jdk6
hg clone http://hg.openjdk.java.net/jdk6/jdk6
cd jdk6
sh get_source.sh
cd -

# jdk7u
hg clone http://hg.openjdk.java.net/jdk7u/jdk7u
cd jdk6
sh get_source.sh
cd -

# jdk8u
hg clone http://hg.openjdk.java.net/jdk8u/jdk8u
cd jdk6
sh get_source.sh
cd -

# jdk9u
hg clone http://hg.openjdk.java.net/jdk-updates/jdk9u
cd jdk9u
sh get_source.sh
cd -

hg clone http://hg.openjdk.java.net/jdk-updates/jdk10u
hg clone http://hg.openjdk.java.net/jdk-updates/jdk11u
hg clone http://hg.openjdk.java.net/jdk-updates/jdk12u

ls
