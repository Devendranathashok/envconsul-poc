FROM devendranathashok/node_envconsul:14.17.5
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
EXPOSE 3005
ENTRYPOINT ["node", "app.js"]
//ENTRYPOINT [ "/tmp/envconsul", "--once", "-config=/vault/secrets/envconsul-config.hcl", "node", "app.js"]
