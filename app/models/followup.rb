class Followup < ApplicationRecord
  validates :sent_at, :content, presence: true

  belongs_to :lead
end
