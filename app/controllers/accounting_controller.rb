class AccountingController < ApplicationController
  def show
    respond_to do |f|
      f.html {render 'pages/accounting'}
    end
  end
end
