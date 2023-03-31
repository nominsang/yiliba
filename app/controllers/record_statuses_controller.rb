class RecordStatusesController < ApplicationController
  before_action :set_record_status, only: %i[ show edit update destroy ]

  # GET /record_statuses or /record_statuses.json
  def index
    @record_statuses = RecordStatus.all
  end

  # GET /record_statuses/1 or /record_statuses/1.json
  def show
  end

  # GET /record_statuses/new
  def new
    @record_status = RecordStatus.new
  end

  # GET /record_statuses/1/edit
  def edit
  end

  # POST /record_statuses or /record_statuses.json
  def create
    @record_status = RecordStatus.new(record_status_params)

    respond_to do |format|
      if @record_status.save
        format.html { redirect_to record_status_url(@record_status), notice: "Record status was successfully created." }
        format.json { render :show, status: :created, location: @record_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @record_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /record_statuses/1 or /record_statuses/1.json
  def update
    respond_to do |format|
      if @record_status.update(record_status_params)
        format.html { redirect_to record_status_url(@record_status), notice: "Record status was successfully updated." }
        format.json { render :show, status: :ok, location: @record_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @record_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /record_statuses/1 or /record_statuses/1.json
  def destroy
    @record_status.destroy

    respond_to do |format|
      format.html { redirect_to record_statuses_url, notice: "Record status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record_status
      @record_status = RecordStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def record_status_params
      params.require(:record_status).permit(:code, :description, :about)
    end
end
