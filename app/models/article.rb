class Article < ActiveRecord::Base
  include BibtexOutput

  validates :author, :title, :journal, :year, presence: true
end
