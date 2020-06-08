class Accounting::Account < ApplicationRecord
  has_many :transactions

  after_create :create_initial_transaction

  def create_initial_transaction
    self.transactions.create(date: self.created_at, type_of_transaction: 2, amount: self.initial_balance.to_f, comments: 'New account!')
  end

  def balance 
    self.transactions.reduce(self.initial_balance.to_f) {|amount, num| num.try(:type_of_transaction) == 0 ? amount + num.amount : num.try(:type_of_transaction) == 1 ? amount - num.amount : amount + 0}
  end
end