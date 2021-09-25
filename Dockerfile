#docker exec -it 0e5571294808 /bin/bash
#aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <accountid>.dkr.ecr.us-east-1.amazonaws.com
#docker build -t my-app .
#docker tag my-app:latest <accountid>.dkr.ecr.us-east-1.amazonaws.com/my-app:latest
#docker push <accountid>.dkr.ecr.us-east-1.amazonaws.com/my-app:latest

FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/node-app

COPY . /home/node-app

CMD ["node", "/home/node-app/server.js"]