class InProceeding < ActiveRecord::Base
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :publishers
end
