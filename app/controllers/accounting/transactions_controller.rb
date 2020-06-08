class Accounting::TransactionsController < ApplicationController
  before_action :set_accounting_transaction, only: [:show, :edit, :update, :destroy]
  before_action :set_dashboard, only: [:show, :new, :edit, :index]

  # GET /accounting/transactions
  # GET /accounting/transactions.json
  def index
    @accounting_transactions = Accounting::Transaction.all
    authorize Accounting::Transaction
  end

  # GET /accounting/transactions/1
  # GET /accounting/transactions/1.json
  def show
    authorize Accounting::Transaction
  end

  # GET /accounting/transactions/new
  def new
    @accounting_transaction = Accounting::Transaction.new
    authorize Accounting::Transaction
  end

  # GET /accounting/transactions/1/edit
  def edit
    authorize Accounting::Transaction
  end

  # POST /accounting/transactions
  # POST /accounting/transactions.json
  def create
    @accounting_transaction = Accounting::Transaction.new(accounting_transaction_params)
    authorize Accounting::Transaction

    respond_to do |format|
      if @accounting_transaction.save
        format.html { redirect_to @accounting_transaction, notice: 'Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @accounting_transaction }
      else
        format.html { render :new }
        format.json { render json: @accounting_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounting/transactions/1
  # PATCH/PUT /accounting/transactions/1.json
  def update
    authorize Accounting::Transaction

    respond_to do |format|
      if @accounting_transaction.update(accounting_transaction_params)
        format.html { redirect_to @accounting_transaction, notice: 'Transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @accounting_transaction }
      else
        format.html { render :edit }
        format.json { render json: @accounting_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounting/transactions/1
  # DELETE /accounting/transactions/1.json
  def destroy
    authorize Accounting::Transaction

    @accounting_transaction.destroy
    respond_to do |format|
      format.html { redirect_to accounting_transactions_url, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accounting_transaction
      @accounting_transaction = Accounting::Transaction.find(params[:id])
    end
    
    def set_dashboard
      @dashboard = true
    end

    # Only allow a list of trusted parameters through.
    def accounting_transaction_params
      params.require(:accounting_transaction).permit(:event_id, :date, :type_of_transaction, :comments, :amount, :account_id)
    end
end
