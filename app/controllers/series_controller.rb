class SeriesController < ApplicationController
  before_action :set_series, only: %i[ show edit update destroy ]

  # GET /series or /series.json
  def index
    @series = Serie.all
    @club = Club.find(params[:club_id])
    @event = Event.find(params[:event_id])
  end

  # GET /series/1 or /series/1.json
  def show
    @club = Club.find(params[:club_id])
    @event = Event.find(params[:event_id])
    @serie = Serie.find(params[:id])
    @matches = Match.all
  end

  # GET /series/new
  def new
    @serie = Serie.new
    @club = Club.find(params[:club_id])
    @event = Event.find(params[:event_id])
  end

  # GET /series/1/edit
  def edit
  end

  # POST /series or /series.json
  def create
    @event = Event.find(params[:event_id])
    @serie = Serie.new(serie_params)
    @serie.event = @event
    @series = Serie.all
    @match = Match.create


    respond_to do |format|
      if @serie.save
        format.html { redirect_to club_event_series_index_path, notice: "Serie was successfully created." }
        format.json { render :show, status: :created, location: @serie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @serie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /series/1 or /series/1.json
  def update
    respond_to do |format|
      if @series.update(series_params)
        format.html { redirect_to @series, notice: "Serie was successfully updated." }
        format.json { render :show, status: :ok, location: @series }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @series.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /series/1 or /series/1.json
  def destroy
    @series.destroy
    respond_to do |format|
      format.html { redirect_to series_url, notice: "Serie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_series
      @serie = Serie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def serie_params
      params.require(:serie).permit(:event_id, :date, :number_of_courts, :players_presents, :duration, :number_courts)
    end
end
