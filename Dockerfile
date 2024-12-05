FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD ["node", "server.js"]

# docker run -p 3000:80 -d --rm --name feedback-app -v feedback2:/app/feedback feedback-node:volumes
# -v 태그를 통해 볼륨을 지정할 수 있다. -v [이름있는 볼륨]:[경로]
# docker volmue rm [이름있는 볼륨] - 볼륨 삭제
# docker volume prune - 모든 볼륨 삭제