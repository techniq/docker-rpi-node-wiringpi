FROM hypriot/rpi-node:6.5.0
MAINTAINER Sean Lynch <techniq35@gmail.com>

RUN git clone git://git.drogon.net/wiringPi
RUN cd wiringPi && ./build

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN npm install
ONBUILD COPY . /usr/src/app

CMD [ "npm", "start" ]
