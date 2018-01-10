FROM fedora:latest
ENV NAME=docker-react-tic-tac-toe
LABEL maintainer="Irina Boverman <irina.boverman@gmail.com>" \
      summary="Docker image for react-tic-tac-toe." \
      name="irinabov/$NAME"
COPY ./build.sh /
COPY ./start.sh /
RUN ./build.sh
WORKDIR /react-tic-tac-toe

EXPOSE 8080 8888
CMD /start.sh
