class InProceeding < ActiveRecord::Base
  has_many :references
  has_many :authors, through: :references
  has_many :publishers, through: :references
end
