FROM gitpod/workspace-postgres
USER gitpod

# Install the Ruby version specified in '.ruby-version'
# COPY --chown=gitpod:gitpod .ruby-version /tmp
RUN echo "rvm_gems_path=/home/gitpod/.rvm" > ~/.rvmrc
RUN bash -lc "rvm install ruby-3.0.0 && rvm use ruby-3.0.0 --default && gem install rails"
RUN echo "rvm_gems_path=/workspace/.rvm" > ~/.rvmrc
RUN bash -lc "rvm reinstall ruby-3.0.0 && rvm use ruby-3.0.0 --default && gem install rails"