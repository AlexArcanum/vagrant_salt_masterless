FROM node:boron

RUN mkdir -p /usr/src/Personal_Requests
COPY ../../Personal_Requests /usr/src/Personal_Requests

WORKDIR /usr/src/Personal_Requests

RUN npm install

EXPOSE 8080

CMD ["npm", "start"]

