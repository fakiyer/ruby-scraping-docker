FROM ruby:2.3

RUN gem install nokogiri
RUN gem install mechanize

RUN mkdir /myapp
WORKDIR /myapp

ADD . /myapp

CMD ["ruby", "scraping.rb"]
