FROM eclipse-temurin:17-jdk-alpine AS build
WORKDIR /app
COPY . .
RUN javac hello.java
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=build /app/hello.class .
CMD ["java", "hello"]
