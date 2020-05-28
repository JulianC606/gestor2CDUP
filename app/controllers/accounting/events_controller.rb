class Accounting::EventsController < ApplicationController
  before_action :set_accounting_event, only: [:show, :edit, :update, :destroy]

  # GET /accounting/events
  # GET /accounting/events.json
  def index
    @accounting_events = Accounting::Event.all
  end

  # GET /accounting/events/1
  # GET /accounting/events/1.json
  def show
  end

  # GET /accounting/events/new
  def new
    @accounting_event = Accounting::Event.new
  end

  # GET /accounting/events/1/edit
  def edit
  end

  # POST /accounting/events
  # POST /accounting/events.json
  def create
    @accounting_event = Accounting::Event.new(accounting_event_params)

    respond_to do |format|
      if @accounting_event.save
        format.html { redirect_to @accounting_event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @accounting_event }
      else
        format.html { render :new }
        format.json { render json: @accounting_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounting/events/1
  # PATCH/PUT /accounting/events/1.json
  def update
    respond_to do |format|
      if @accounting_event.update(accounting_event_params)
        format.html { redirect_to @accounting_event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @accounting_event }
      else
        format.html { render :edit }
        format.json { render json: @accounting_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounting/events/1
  # DELETE /accounting/events/1.json
  def destroy
    @accounting_event.destroy
    respond_to do |format|
      format.html { redirect_to accounting_events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accounting_event
      @accounting_event = Accounting::Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accounting_event_params
      params.fetch(:accounting_event, {})
    end
end
