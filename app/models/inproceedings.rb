class Inproceedings < ActiveRecord::Base
  validates :author, :title, :booktitle, :year, presence: true
end
