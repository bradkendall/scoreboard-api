FROM kkarczmarczyk/node-yarn

COPY . .

RUN yarn install

EXPOSE 3000

ENTRYPOINT ["yarn"]
CMD ["start"]
