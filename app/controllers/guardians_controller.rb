class GuardiansController < ApplicationController
  before_action :set_guardian, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?

  # GET /guardians
  def index
    @guardians = Guardian.all
  end

  # GET /guardians/1
  def show
  end

  # GET /guardians/new
  def new
    @guardian = Guardian.new
  end

  # GET /guardians/1/edit
  def edit
  end

  # POST /guardians
  def create
    @guardian = Guardian.new(guardian_params)

    if @guardian.save
      redirect_to @guardian, notice: 'Guardian was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /guardians/1
  def update
    if @guardian.update(guardian_params)
      redirect_to @guardian, notice: 'Guardian was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /guardians/1
  def destroy
    @guardian.destroy
    redirect_to guardians_url, notice: 'Guardian was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guardian
      @guardian = Guardian.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def guardian_params
      params.require(:guardian).permit(:name, :email, :password_digest, :student_id)
    end

    def logged_in?
      redirect_to session_path, notice: "You must log in to do that" unless session[:logged_in_teacher]
    end
end
