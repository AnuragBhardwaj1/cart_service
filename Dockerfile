FROM ubuntu:latest
RUN ["apt", "-y", "update"]
RUN ["apt", "install", "-y", "build-essential"]
RUN ["mkdir", "src"]

RUN ["apt", "install", "-y", "default-jre"]

WORKDIR "./src"
COPY "/cart_service.jar" "."
#ENTRYPOINT ["java","HelloWorld"]
RUN ["java", "cart_service.jar"]
