FROM 638274162892.dkr.ecr.us-east-1.amazonaws.com/image-node:latest

WORKDIR /app

RUN npm install -g contentful-cli

COPY package.json .
RUN npm install

COPY . .

USER node
EXPOSE 8040

CMD ["npm", "run", "start:dev"]
