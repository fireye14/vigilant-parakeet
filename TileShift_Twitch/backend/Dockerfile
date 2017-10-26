FROM node:6.9.0

MAINTAINER JattMonsoon

# Install the npm packages which change infrequently
WORKDIR /TileShift_Twitch/backend
COPY ./package.json ./
RUN npm install supervisor -g
RUN npm install

EXPOSE 8080
CMD ["./entrypoint.sh"]
