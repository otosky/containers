FROM gradle:7.6.3-jdk11-alpine AS gradle

RUN git clone https://framagit.org/Ezwen/bandcamp-collection-downloader.git && \
    cd bandcamp-collection-downloader && \
    gradle fatjar

FROM azul/zulu-openjdk-alpine:11.0.17 AS base

RUN mkdir /app
COPY --from=gradle /home/gradle/bandcamp-collection-downloader/build/libs/bandcamp-collection-downloader.jar /app/bandcamp-collection-downloader.jar

ENTRYPOINT ["java", "-jar", "/app/bandcamp-collection-downloader.jar"]
CMD ["--dry-run"]
