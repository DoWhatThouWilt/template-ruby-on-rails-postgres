FROM gitpod/workspace-postgres
USER gitpod

# DON'T Install the Ruby version specified in '.ruby-version' because the bitch doesn't work for 3.0.0

RUN echo "rvm_gems_path=/home/gitpod/.rvm" > ~/.rvmrc
RUN bash -lc "rvm install ruby-3.0.0 && rvm use ruby-3.0.0 --default && gem install rails"
RUN echo "rvm_gems_path=/workspace/.rvm" > ~/.rvmrc