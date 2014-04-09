class HomeController < ApplicationController
  def index
  	@Authors = Author.all
	@Publishers = Publisher.all
	@References = Reference.all
	@Inproceedings = Inproceedings.all
  end
end
