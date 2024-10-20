FROM gradle:8.5.0-jdk21 AS build

WORKDIR /app

COPY app /app

RUN gradle installDist --no-daemon --info

FROM openjdk:21-slim

WORKDIR /app

COPY --from=build /app/build/install/app /app

CMD ["./bin/app"]
