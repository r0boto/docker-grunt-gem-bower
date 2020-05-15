# Pull base image.
FROM library/node
MAINTAINER Jiri V
############################

# Install Bower & Grunt
RUN npm install -g bower grunt-cli && \
    echo '{ "allow_root": true }' > /root/.bowerrc

# install bower, grunt, gulp, less
RUN npm i -g grunt-cli gulp bower less

# install Ruby & Gem
RUN apt-get update -y
RUN apt-get install -y build-essential
RUN  apt-get install -y ruby-dev
RUN apt-get install -y rubygems
RUN gem install compass

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]

############################
