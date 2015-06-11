class Deal < ActiveRecord::Base
  belongs_to :retailer
  belongs_to :tag
  belongs_to :user
  validates :name, :presence => true, :uniqueness => true
  validates :retailer_id, :presence => true
end
