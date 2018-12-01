# Let's use Ubuntu
FROM ubuntu:17.10

# Let's get python3, pip3, and pipenv
RUN apt-get update
RUN apt-get install build
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip3 install pipenv 

# We need this to prevent Rasa from breaking due to lack of timezones
RUN apt install -y tzdata
RUN echo "America/Winnipeg" >/etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

# Install Our Rasa app
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN ./install.sh
RUN pipenv shell
RUN ./train.sh

# Run the server upon starting the container
CMD pipenv shell && ./server.sh
