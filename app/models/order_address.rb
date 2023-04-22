class OrderAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :postal_code, :region_id, :city, :street, :building_name, :phone_number, :order_id

  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :region_id, numericality: {other_than: 1, message: "can't be blank"}
    validates :city, allow_blank: true
    validates :street, allow_blank: true
    validates :phone_number
    validates :order_id
  end

  

end