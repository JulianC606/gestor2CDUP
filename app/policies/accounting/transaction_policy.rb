class Accounting::TransactionPolicy < ApplicationPolicy
  def index?
    user.is_admin?
  end
end
class Accounting::TransactionPolicy < ApplicationPolicy
  def index?
    user.is_admin?
  end
  # GET /accounting/transactions/1
  # GET /accounting/transactions/1.json
  def show?
    user.is_admin?
  end

  # GET /accounting/transactions/new|
  def new?
    user.is_admin?
  end

  # GET /accounting/transactions/1/edit
  def edit?
    user.is_admin?
  end

  # POST /accounting/transactions
  # POST /accounting/transactions.json
  def create?
    user.is_admin?
  end

  # PATCH/PUT /accounting/transactions/1
  # PATCH/PUT /accounting/transactions/1.json
  def update?
    user.is_admin?
  end

  # DELETE /accounting/transactions/1
  # DELETE /accounting/transactions/1.json
  def destroy?
    user.is_admin?
  end
end