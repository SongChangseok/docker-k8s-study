FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

# VOLUME ["/app/node_modules"] # -v /app/node_modules
# local 영역에서 위 경로를 컨테이너 내부 경로로 결합하는 방법, 덮었는 방법

CMD ["npm", "start"]

# docker run -p 3000:80 -d --rm --name feedback-app -v feedback2:/app/feedback feedback-node:volumes
# -v 태그를 통해 볼륨을 지정할 수 있다. -v [이름있는 볼륨]:[경로]
# docker volmue rm [이름있는 볼륨] - 볼륨 삭제
# docker volume prune - 모든 볼륨 삭제


# nodemon 모듈을 통해 server.js node가 변경될 때 자동 재시작하도록 할 수 있다.