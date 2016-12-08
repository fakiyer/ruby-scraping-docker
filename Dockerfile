FROM ruby:2.3

RUN gem install nokogiri

RUN mkdir /myapp
WORKDIR /myapp

ADD . /myapp

CMD ["ruby", "scraping.rb"]
