# Ubuntu 이미지 사용
FROM ubuntu:latest

# 필수 패키지 설치 및 Java 17 설치
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 작업 디렉토리 설정
WORKDIR /app

# JAR 파일을 컨테이너로 복사
COPY build/libs/docker-0.0.1-SNAPSHOT.jar /app/app.jar

# 포트 8088 노출
EXPOSE 8088

# 애플리케이션 실행 명령 설정
CMD ["java", "-jar", "/app/app.jar"]
