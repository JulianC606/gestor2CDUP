class Accounting::EntriesController < ApplicationController
  before_action :set_accounting_entry, only: [:show]
  before_action :set_dashboard, only: [:show, :index]
  layout "dashboard"
  # GET /accounting/entries
  # GET /accounting/entries.json
  def index
    @accounting_entries = Accounting::Entry.all
  end

  # GET /accounting/entries/1
  # GET /accounting/entries/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accounting_entry
      @accounting_entry = Accounting::Entry.find(params[:id])
    end
    def set_dashboard
      @dashboard = true
    end
end
