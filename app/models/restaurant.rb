class Restaurant < ApplicationRecord
	validates(:name, {presence: true, uniqueness: true})
	validates :address, presence: true
	validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false}
	has_many :reviews, dependent: :destroy
end
