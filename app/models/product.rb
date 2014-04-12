class Product < ActiveRecord::Base
  validates :name, :presence => true
  validates :price, presence: true
  validates :description, presence: true

  # def self.import(file)
  #   CSV.each(file.path, headers: true) do |row|
  #     Product.parse! row.to_hash
  #   end
  # end
end
