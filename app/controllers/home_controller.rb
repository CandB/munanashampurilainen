class HomeController < ApplicationController
  def index
    @Articles = Article.all
    @Books = Book.all
    @Authors = Author.all
	  @Publishers = Publisher.all
	  @References = Reference.all
	  @Inproceedings = Inproceedings.all
    @Incolletions = Incollection.all

    @AllOfThem = Article.all
    @AllOfThem << Book.all
    @AllOfThem << Inproceedings.all
    @AllOfThem << Incollection.all
  end
end
