FROM node:boron

RUN mkdir -p /usr/src/Common_Components

COPY /Common_Components /usr/src/Common_Components

RUN mkdir -p /usr/src/Common_Components/musala_authorization_gateway/lib
RUN mkdir -p /usr/src/Common_Components/musala_authorization_gateway/lib/musala-oauth

RUN mkdir -p /usr/src/Common_Components/musala_authorization_gateway/lib
RUN mkdir -p /usr/src/Common_Components/musala_authorization_gateway/lib/musala-log

COPY /Common_Components/musala-oauth /usr/src/Common_Components/musala_authorization_gateway/lib/musala-oauth
COPY /Common_Components/musala-log /usr/src/Common_Components/musala_authorization_gateway/lib/musala-log

WORKDIR /usr/src/Common_Components/musala_authorization_gateway/

RUN npm install

EXPOSE 8080

CMD ["npm", "start"]