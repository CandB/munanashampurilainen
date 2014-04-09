class Inproceedings < ActiveRecord::Base
  include BibtexOutput

  validates :author, :title, :booktitle, :year, presence: true
end
