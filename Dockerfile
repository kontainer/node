FROM node:latest 

ENV NPM_CONFIG_DEBUG_LEVEL warn 

WORKDIR /code/

COPY npm-shrinkwrap.json . 

RUN npm install 

COPY . .

EXPOSE 8000

CMD ["npm": "start"]


