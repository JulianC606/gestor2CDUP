class Accounting::Entry < ApplicationRecord
  belongs_to :movement, foreign_key: :transaction_id, class_name: 'Transaction'

  has_many :entry_lines

  after_create :create_lines

  def create_lines
    ## Select the type of transaction
    case self.movement.type_of_transaction
    when 0
      self.update(description: 'Sale')
      income = self.movement.amount*-1
      account = self.movement.amount
    when 1
      self.update(description: 'Purchase')
      outcome = self.movement.amount
      account = self.movement.amount*-1
    when 2
      self.update(description: 'New Account')
      account = self.movement.amount
      capital = self.movement.amount*-1
    when 3
      self.update(description: 'Destroy Account')
      account = self.movement.amount*-1
      capital = self.movement.amount
    end
    ## Make a hash to sort the lines
    lines = {
      'capital' => ['3001', capital],
      'account' => ["10#{self.movement.account.id}", account],
      'income' => ['4001', income],
      'outcome' => ['5001', outcome] 
    }.reject {|k, v| v[1].blank? or v[1] == 0}

    ## Create lines
    lines.each do |name, values|
      debit = values[1] > 0 ? values[1] : 0
      credit = values[1] < 0 ? values[1] : 0
      self.entry_lines.create(account_number: values[0], credit: credit, debit: debit)
    end
  end
end
