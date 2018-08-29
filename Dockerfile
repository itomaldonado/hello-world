from library/ruby:2.4.0

# Add files
RUN mkdir -p /home/hello-world
ADD ./ /home/hello-world/

# Install dependencies
WORKDIR /home/hello-world
RUN apt-get update && apt-get install -y node
RUN bundle install
RUN gem list

# Expose port
EXPOSE 3000

# Entrypoint
ENTRYPOINT ./bin/rails s