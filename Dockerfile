FROM eclipse-temurin

RUN wget -O paper.jar https://api.papermc.io/v2/projects/paper/versions/1.19.4/builds/521/downloads/paper-1.19.4-521.jar
RUN echo "eula=true" > eula.txt
RUN mkdir config
RUN wget -O config/paper-global.yml https://gist.githubusercontent.com/xRealNeon/8d6e3d91271301809d869a7a77bc1cba/raw/474447c70fbb0757e1d4e35c029a1e59b3e2116f/paper-global.yml

CMD ["java", "-jar" "paper.jar"]
