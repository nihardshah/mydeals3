class Retailer < ActiveRecord::Base
  validates :retailer, :presence => true, :uniqueness => true
  validates :url, :presence => true, :uniqueness => true
  has_many :deals
end
