class Toy < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
