class IncollectionsController < ApplicationController
  before_action :set_incollection, only: [:show, :edit, :update, :destroy]

  # GET /incollections
  # GET /incollections.json
  def index
    @incollections = Incollection.all
  end

  # GET /incollections/1
  # GET /incollections/1.json
  def show
  end

  # GET /incollections/new
  def new
    @incollection = Incollection.new
  end

  # GET /incollections/1/edit
  def edit
  end

  # POST /incollections
  # POST /incollections.json
  def create
    @incollection = Incollection.new(incollection_params)

    respond_to do |format|
      if @incollection.save
        format.html { redirect_to @incollection, notice: 'Incollection was successfully created.' }
        format.json { render action: 'show', status: :created, location: @incollection }
      else
        format.html { render action: 'new' }
        format.json { render json: @incollection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incollections/1
  # PATCH/PUT /incollections/1.json
  def update
    respond_to do |format|
      if @incollection.update(incollection_params)
        format.html { redirect_to @incollection, notice: 'Incollection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @incollection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incollections/1
  # DELETE /incollections/1.json
  def destroy
    @incollection.destroy
    respond_to do |format|
      format.html { redirect_to incollections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incollection
      @incollection = Incollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incollection_params
      params.require(:incollection).permit(:author, :title, :year, :booktitle, :publisher)
    end
end
