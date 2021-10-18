#!/bin/bash

set -x
#set -e


/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/bin/java \
    -jar /Users/appveyor/projects/jtreg/lib/jtreg.jar \
    -a -v1 -nr \
    -jdk:/Users/appveyor/projects/jdk8u-jdk8u-dev/macosx-x86_64-normal-server-release/images/j2sdk-image \
    /Users/appveyor/projects/jdk8u-jdk8u-dev/jdk/test/java/nio/file/etc/MacVolumesTest.java

cat ./JTwork/java/nio/file/etc/MacVolumesTest.jtr
