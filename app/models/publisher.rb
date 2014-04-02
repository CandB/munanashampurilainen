class Publisher < ActiveRecord::Base
  has_and_belongs_to_many :in_proceedings
end
