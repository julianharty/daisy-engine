#!/bin/bash
FAILED=0
sudo mkdir /sdcard
sudo chmod 777 /sdcard
ant clean jar build-and-test
# simpler version of the build script used for the full DaisyReader project. Kept this structure for ease of integration.
if [ "$?" = 1 ]; then
    echo "daisy-engine build failed!"
    FAILED=1
fi
exit $FAILED

