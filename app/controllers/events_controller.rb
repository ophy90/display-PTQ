class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]

  # GET /events or /events.json
  def index
    @club = Club.find(params[:club_id])
    @events = Event.all
  end

  # GET /events/1 or /events/1.json
  def show
    @club = Club.find(params[:club_id])
  end

  # GET /events/new
  def new
    @club = Club.find(params[:club_id])
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
    @club = Club.find(params[:club_id])
  end

  # POST /events or /events.json
  def create
    @club = Club.find(params[:club_id])
    @event = Event.new(event_params)
    @event.club = @club
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event.club, notice: "Event was successfully created." }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1 or /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: "Event was successfully updated." }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1 or /events/1.json
  def destroy
    @club = Club.find(params[:club_id])
    @event = Event.find(params[:id])
    @event.destroy
    respond_to do |format|
      format.html { redirect_to club_events_path, notice: "Event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:name, :event_type)
    end
end
