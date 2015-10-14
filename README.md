# docker-machine timesync

OS X workaround for VirtualBox's extreme time drift, making `nodemon` legacy scan behave bad.

## What?
Installs a [launchd plist](com.hiotlabs.docker-machine.timesync) that SSH to `docker-machine` and runs ntpclient every 10 minutes.

Assumptions: the the docker-machine (i.e. boot2docker) machine name is *default*, and docker-machine binary is in `/usr/local/bin`.

## Installing

Run

```bash
$ ./install.sh
```
