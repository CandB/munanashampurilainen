class Publisher < ActiveRecord::Base
  has_many :references
  has_many :in_proceedings, through: :references
  has_many :authors, through: :references
end
