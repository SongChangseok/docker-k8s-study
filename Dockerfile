FROM node

WORKDIR /app

COPY . ./

RUN npm install

EXPOSE 80

CMD ["node", "server.js"]

# FROM은 어떤 이미지를 기반으로 할지 정하는 명령어
# WORKDIR은 명령어가 실행될 디렉토리를 설정하는 명령어
# COPY는 로컬 파일을 컨테이너에 복사하는 명령어
# RUN은 이미지를 생성될 때 실행할 명령어
# EXPOSE는 컨테이너가 실행될 때 사용할 포트를 설정하는 명령어
# CMD는 컨테이너가 시작되었을 때 실행할 명령어
