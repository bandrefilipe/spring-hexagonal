# Build Stage
FROM maven:3.9.7-eclipse-temurin-21-alpine AS build
WORKDIR /app
COPY . .
RUN mvn clean package

# Runtime Stage
FROM openjdk:21-slim AS runtime
WORKDIR /app
COPY --from=build /app/bootloader/target/*-bootloader-*.jar app.jar
RUN useradd app_user
USER app_user
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
