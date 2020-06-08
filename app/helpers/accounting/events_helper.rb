module Accounting::EventsHelper
  def get_status_color(status)
    case status
    when 'active'
      'success'
    when 'past'
      'dark'
    else 'next'
      'warning'
    end
  end

  def get_status_icon(status)
    case status
    when 'active'
      'check'
    when 'past'
      'alt'
    else 'next'
      'plus'
    end
  end

end
