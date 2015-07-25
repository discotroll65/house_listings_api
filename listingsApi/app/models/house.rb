class House < ActiveRecord::Base
  belongs_to :status
  validates :street, :status, :price, :bedroom, :bathrooms, :lat, :lng,
    presence: true
  validates_uniqueness_of :lat, scope: :lng
end
