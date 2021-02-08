class EmployeedocumentsController < ApplicationController
  before_action :set_employeedocument, only: %i[ show edit update destroy ]

  # GET /employeedocuments or /employeedocuments.json
  def index
    @employeedocuments = Employeedocument.all
  end

  # GET /employeedocuments/1 or /employeedocuments/1.json
  def show
  end

  # GET /employeedocuments/new
  def new
    @employeedocument = Employeedocument.new
  end

  # GET /employeedocuments/1/edit
  def edit
  end

  # POST /employeedocuments or /employeedocuments.json
  def create
    @employeedocument = Employeedocument.new(employeedocument_params)

    respond_to do |format|
      if @employeedocument.save
        format.html { redirect_to @employeedocument, notice: "Employeedocument was successfully created." }
        format.json { render :show, status: :created, location: @employeedocument }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employeedocument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employeedocuments/1 or /employeedocuments/1.json
  def update
    respond_to do |format|
      if @employeedocument.update(employeedocument_params)
        format.html { redirect_to @employeedocument, notice: "Employeedocument was successfully updated." }
        format.json { render :show, status: :ok, location: @employeedocument }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employeedocument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employeedocuments/1 or /employeedocuments/1.json
  def destroy
    @employeedocument.destroy
    respond_to do |format|
      format.html { redirect_to employeedocuments_url, notice: "Employeedocument was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employeedocument
      @employeedocument = Employeedocument.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employeedocument_params
      params.require(:employeedocument).permit(:first_name, :last_name, :age, :gender, :designation)
    end
end
