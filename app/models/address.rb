class Address < ApplicationRecord
  
  belongs_to :customer
  
  validates :zip_code, presence: true
  validates :address, presence: true
  validates :name, presence: true
  
  def address_information
    [zip_code, address, name].join(' ')
  end

  
end
