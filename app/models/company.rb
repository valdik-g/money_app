class Company < ApplicationRecord
  has_many :users

  validates_presence_of :company_name, message: 'не может быть пустым'
  validates_presence_of :uuid, message: 'не может быть пустым'
  validates_uniqueness_of :uuid, message: "уже занят"
end