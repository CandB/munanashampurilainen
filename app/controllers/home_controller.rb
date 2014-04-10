class HomeController < ApplicationController
  def index
    @Articles = Article.all
    @Books = Book.all
    @Authors = Author.all
	  @Publishers = Publisher.all
	  @References = Reference.all
	  @Inproceedings = Inproceedings.all
  end
end
