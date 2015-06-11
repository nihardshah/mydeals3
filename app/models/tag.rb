class Tag < ActiveRecord::Base
  belongs_to :retailer
has_many :deals
validates :tags_name, :presence => true, :uniqueness => true
end
