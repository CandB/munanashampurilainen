class InProceeding < ActiveRecord::Base
  has_and_belongs_to_many :authors, :publishers
end
