FROM 638274162892.dkr.ecr.us-east-1.amazonaws.com/node:latest

WORKDIR /usr/src/app

COPY * ./

RUN rm -f package-lock.json && \ 
    npm install --legacy-peer-deps && \

COPY .npmrc ./

RUN npm publish && \
    npm 

