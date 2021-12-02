FROM 638274162892.dkr.ecr.us-east-1.amazonaws.com/node:latest

WORKDIR /usr/src/app

COPY * ./

RUN mv .npmrc npmrc
    rm -f package-lock.json && \     
    npm install --legacy-peer-deps && \
    mv npmrc .npmrc

RUN npm install @arkosdigital/ang2-conduit@0.0.3

COPY . .

EXPOSE 8090

CMD [ "ng", "serve", "--host", "0.0.0.0", "--port", "8090" ]
