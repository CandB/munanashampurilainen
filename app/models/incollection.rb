class Incollection < ActiveRecord::Base
  include BibtexOutput

  validates :author, :title, :booktitle, :year, :publisher, presence: true
end
