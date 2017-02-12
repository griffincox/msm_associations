class Actor < ApplicationRecord
  has_many :characters
  validates :name, :presence => true, :uniqueness => { :scope => :dob }
  has_many :movies, :through => :characters
end
