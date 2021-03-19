FROM jupyter/tensorflow-notebook
USER root
RUN apt-get update
RUN apt install -y libtool libffi-dev ruby ruby-dev make
RUN apt install -y libzmq3-dev libczmq-dev
RUN gem install ffi-rzmq
RUN gem install iruby --pre
RUN iruby register --force
RUN gem install redis
RUN apt-get update
RUN apt-get install -y libpq-dev
RUN gem install pg
RUN gem install sequel
RUN apt-get install -y sqlite3
RUN apt-get install -y libsqlite3-dev
RUN gem install sqlite3 
RUN gem install sinatra
RUN gem install sinatra-contrib
RUN apt-get install -y libpng-dev
RUN apt-get install -y --reinstall zlibc zlib1g zlib1g-dev
RUN gem install nokogiri
RUN pip3 install graphviz
RUN pip3 install pydotplus
RUN apt install -y python3-pydot python3-pydot-ng graphviz
RUN pip3 install apyori
RUN pip3 install mlxtend
CMD jupyter notebook --allow-root --NotebookApp.token='' 