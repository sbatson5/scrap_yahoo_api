class Manager < ApplicationRecord
  validates :real_name, presence: true
end
