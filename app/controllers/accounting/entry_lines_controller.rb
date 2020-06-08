class Accounting::EntryLinesController < ApplicationController
  before_action :set_accounting_entry_line, only: [:show]
  before_action :set_dashboard, only: [:show, :index]

  # GET /accounting/entry_lines
  # GET /accounting/entry_lines.json
  def index
    @accounting_entry_lines = Accounting::EntryLine.all
  end

  # GET /accounting/entry_lines/1
  # GET /accounting/entry_lines/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accounting_entry_line
      @accounting_entry_line = Accounting::EntryLine.find(params[:id])
    end
    def set_dashboard
      @dashboard = true
    end
end
