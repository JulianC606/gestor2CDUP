module Accounting::AccountsHelper

  def get_balance_color(balance)
    case balance
    when -Float::INFINITY...0
      'danger'
    when 0
      'warning'
    else 
      'success'
    end
  end

  def get_balance_icon(balance)
    case balance
    when -Float::INFINITY...0
      'skull-crossbones'
    when 0
      'exclamation'
    else 
      'check'
    end
  end
end
