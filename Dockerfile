FROM registry.dataos.io/library/node 
COPY . /playground
WORKDIR /playground
RUN npm install --registry http://registry.cnpmjs.org
EXPOSE 8080
ENTRYPOINT ["npm","run","serve"]
