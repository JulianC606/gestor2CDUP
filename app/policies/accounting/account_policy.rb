class Accounting::AccountPolicy < ApplicationPolicy
  def index?
    user.is_admin?
  end
  # GET /accounting/accounts/1
  # GET /accounting/accounts/1.json
  def show?
    user.is_admin?
  end

  # GET /accounting/accounts/new
  def new?
    user.is_admin?
  end

  # GET /accounting/accounts/1/edit
  def edit?
    user.is_admin?
  end

  # POST /accounting/accounts
  # POST /accounting/accounts.json
  def create?
    user.is_admin?
  end

  # PATCH/PUT /accounting/accounts/1
  # PATCH/PUT /accounting/accounts/1.json
  def update?
    user.is_admin?
  end

  # DELETE /accounting/accounts/1
  # DELETE /accounting/accounts/1.json
  def destroy?
    user.is_admin?
  end
end