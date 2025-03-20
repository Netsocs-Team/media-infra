FROM bluenviron/mediamtx:latest-ffmpeg

RUN apk add bash vim yq nodejs npm

ADD start /

ADD package.json /
ADD package-lock.json /

RUN npm install

ADD persist.ts /

ENTRYPOINT [ "/start" ]
