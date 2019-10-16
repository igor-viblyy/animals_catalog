# frozen_string_literal: true

# model Animal
class Animal < ApplicationRecord
  has_one_attached :avatar
  belongs_to :exemplar
end
