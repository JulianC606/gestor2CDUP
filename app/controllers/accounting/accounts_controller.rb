class Accounting::AccountsController < ApplicationController
  before_action :set_accounting_account, only: [:show, :edit, :update, :destroy]
  before_action :set_dashboard, only: [:show, :new, :edit, :index]
  layout "dashboard"
  # GET /accounting/accounts
  # GET /accounting/accounts.json
  def index
    authorize Accounting::Account

    @accounting_accounts = Accounting::Account.all
  end

  # GET /accounting/accounts/1
  # GET /accounting/accounts/1.json
  def show
    authorize Accounting::Account

  end

  # GET /accounting/accounts/new
  def new
    
    @accounting_account = Accounting::Account.new
    authorize Accounting::Account

  end

  # GET /accounting/accounts/1/edit
  def edit
    authorize Accounting::Account
  end

  # POST /accounting/accounts
  # POST /accounting/accounts.json
  def create

    @accounting_account = Accounting::Account.new(accounting_account_params)
    authorize Accounting::Account
    respond_to do |format|
      if @accounting_account.save
        format.html { redirect_to @accounting_account, notice: 'Account was successfully created.' }
        format.json { render :show, status: :created, location: @accounting_account }
      else
        format.html { render :new }
        format.json { render json: @accounting_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounting/accounts/1
  # PATCH/PUT /accounting/accounts/1.json
  def update
    authorize Accounting::Account

    respond_to do |format|
      if @accounting_account.update(accounting_account_params)
        format.html { redirect_to @accounting_account, notice: 'Account was successfully updated.' }
        format.json { render :show, status: :ok, location: @accounting_account }
      else
        format.html { render :edit }
        format.json { render json: @accounting_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounting/accounts/1
  # DELETE /accounting/accounts/1.json
  def destroy
    authorize Accounting::Account

    @accounting_account.destroy
    respond_to do |format|
      format.html { redirect_to accounting_accounts_url, notice: 'Account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accounting_account
      @accounting_account = Accounting::Account.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accounting_account_params
      params.require(:accounting_account).permit(:name, :initial_balance, :in_charge_id)
    end
end
