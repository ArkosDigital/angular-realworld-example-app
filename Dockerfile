FROM 638274162892.dkr.ecr.us-east-1.amazonaws.com/image-node:latest

WORKDIR /usr/src/app

COPY . .

EXPOSE 8040

ENTRYPOINT [ "node", "app.js" ]

