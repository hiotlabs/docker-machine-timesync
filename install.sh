echo "installing docker-machine timesync"
launchctl unload ~/Library/LaunchAgents/com.hiotlabs.docker-machine.timesync.plist > /dev/null 2>&1
cp ./com.hiotlabs.docker-machine.timesync.plist ~/Library/LaunchAgents/com.hiotlabs.docker-machine.timesync.plist
launchctl load ~/Library/LaunchAgents/com.hiotlabs.docker-machine.timesync.plist
launchctl start com.hiotlabs.docker-machine.timesync
sleep .5
launchctl list | grep com.hiotlabs.docker-machine
