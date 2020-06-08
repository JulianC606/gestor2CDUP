class Accounting::Transaction < ApplicationRecord
  belongs_to :event, foreign_key: :event_id, optional: true
  belongs_to :account, foreign_key: :account_id

  has_one :entry

  after_create :make_entry

  def make_entry
    self.create_entry(date: self.date)
  end
end
