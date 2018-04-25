FROM kkarczmarczyk/node-yarn

COPY server.js .
COPY package.json .
COPY game ./game

RUN yarn install

EXPOSE 3000

ENTRYPOINT ["npm"]
CMD ["run", "start"]
