class Accounting::Event < ApplicationRecord
  has_many :transactions
  def status
    case true
    when (self.start_date .. self.end_date).cover?(Date.today)
      'active'
    when Date.today < self.start_date
      'next'
    when Date.today > self.end_date
      'past'
    end
    
  end

end
