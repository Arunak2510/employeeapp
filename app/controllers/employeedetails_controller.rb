class EmployeedetailsController < ApplicationController
  before_action :set_employeedetail, only: %i[ show edit update destroy ]

  # GET /employeedetails or /employeedetails.json
  def index
    @employeedetails = Employeedetail.all
  end

  # GET /employeedetails/1 or /employeedetails/1.json
  def show
  end

  # GET /employeedetails/new
  def new
    @employeedetail = Employeedetail.new
  end

  # GET /employeedetails/1/edit
  def edit
  end

  # POST /employeedetails or /employeedetails.json
  def create
    @employeedetail = Employeedetail.new(employeedetail_params)

    respond_to do |format|
      if @employeedetail.save
        format.html { redirect_to @employeedetail, notice: "Employeedetail was successfully created." }
        format.json { render :show, status: :created, location: @employeedetail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employeedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employeedetails/1 or /employeedetails/1.json
  def update
    respond_to do |format|
      if @employeedetail.update(employeedetail_params)
        format.html { redirect_to @employeedetail, notice: "Employeedetail was successfully updated." }
        format.json { render :show, status: :ok, location: @employeedetail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employeedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employeedetails/1 or /employeedetails/1.json
  def destroy
    @employeedetail.destroy
    respond_to do |format|
      format.html { redirect_to employeedetails_url, notice: "Employeedetail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employeedetail
      @employeedetail = Employeedetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employeedetail_params
      params.require(:employeedetail).permit(:first_name, :last_name, :age, :gender, :designation)
    end
end
