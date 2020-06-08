class Accounting::EventPolicy < ApplicationPolicy
  def index?
    user.is_admin?
  end
  # GET /accounting/events/1
  # GET /accounting/events/1.json
  def show?
    user.is_admin?
  end

  # GET /accounting/events/new
  def new?
    user.is_admin?
  end

  # GET /accounting/events/1/edit
  def edit?
    user.is_admin?
  end

  # POST /accounting/events
  # POST /accounting/events.json
  def create?
    user.is_admin?
  end

  # PATCH/PUT /accounting/events/1
  # PATCH/PUT /accounting/events/1.json
  def update?
    user.is_admin?
  end

  # DELETE /accounting/events/1
  # DELETE /accounting/events/1.json
  def destroy?
    user.is_admin?
  end
end