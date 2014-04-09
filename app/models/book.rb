class Book < ActiveRecord::Base
  include BibtexOutput

  validates :title, :year, presence: true
  #should also validate that articles have an author OR an editor OR both
end
