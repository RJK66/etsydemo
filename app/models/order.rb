class Order < ActiveRecord::Base
	validates :address, :city, :state, presence: true

	belongs_to :listing
	belongs_to :buyer, class_name: "user"
	belongs_to :seller, class_name: "user"
	has_many :sales, class_name: "Order", foreign_key: "seller_id"
	has_many :purchases, class_name: "Order", foreign_key: "buyer_id"
end
