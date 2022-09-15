#
# Build stage
#
FROM ubuntu:latest
RUN ["apt", "update", "-y"]
RUN ["apt", "install", "-y", "build-essential"]
RUN ["apt", "install", "-y", "wget", "tar", "git"]
#RUN ["mkdir", "src"]

#Install jre
RUN ["apt", "install", "-y", "openjdk-18-jre"]

##intall maven
#RUN ["wget", "https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz"]
#RUN ["tar", "xzvf", "apache-maven-3.8.6", "/opt/"]
#RUN ["export", "PATH=/opt/apache-maven-3.8.6/bin:$PATH"]

#copy code
#WORKDIR "./src"
#RUN ["git clone git@github.com:AnuragBhardwaj1/cart_service.git"]
#RUN ["mvn", "package"]
COPY ["target/cart_service-*.jar", "app.jar"]

#RUN jar file
#RUN ["pwd"]
#ENTRYPOINT ""
#RUN ["java", "cart_service-0.0.1-SNAPSHOT.jar"]
ENTRYPOINT ["java", "-jar", "app.jar"]

#ENTRYPOINT ["java","-jar","/app.jar"]