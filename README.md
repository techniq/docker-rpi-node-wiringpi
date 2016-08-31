# Docker image for Raspberry Pi to run Node.js applications with WiringPi installed

## Use as base image in your project's `Dockerfile`
```
FROM techniq/rpi-node-wiringpi
...
```

## You can also run the image directly within a container
Useful to experiment (REPL, etc)
```
docker run -i -t techniq/rpi-node-wiringpi
```


