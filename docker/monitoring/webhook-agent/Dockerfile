# 베이스 이미지
FROM --platform=linux/amd64 node:20-alpine

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 설치
COPY package*.json ./
RUN npm install

# 애플리케이션 소스 복사
COPY . .

# NestJS 빌드
RUN npm run build

# 애플리케이션 실행 포트 설정
ENV PORT=3000
EXPOSE $PORT

# 애플리케이션 실행
CMD [ "npm", "run", "start:prod" ]
