class Task < ApplicationRecord
  validates :title, presence: true

  scope :upcoming, -> { order(arel_table[:deadline].asc.nulls_last) }
end
