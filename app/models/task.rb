class Task < ApplicationRecord
  validates :title, presence: true

  acts_as_list

  scope :upcoming, -> { order(arel_table[:deadline].asc.nulls_last) }
end
