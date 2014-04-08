class InproceedingsController < ApplicationController
  before_action :set_inproceedings, only: [:show, :edit, :update, :destroy]

  # GET /inproceedings
  # GET /inproceedings.json
  def index
    @inproceedings = Inproceedings.all
  end

  # GET /inproceedings/1
  # GET /inproceedings/1.json
  def show
  end

  # GET /inproceedings/new
  def new
    @inproceedings = Inproceedings.new
  end

  # GET /inproceedings/1/edit
  def edit
  end

  # POST /inproceedings
  # POST /inproceedings.json
  def create
    @inproceedings = Inproceedings.new(inproceedings_params)

    respond_to do |format|
      if @inproceedings.save
        format.html { redirect_to @inproceedings, notice: 'Inproceedings was successfully created.' }
        format.json { render action: 'show', status: :created, location: @inproceedings }
      else
        format.html { render action: 'new' }
        format.json { render json: @inproceedings.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inproceedings/1
  # PATCH/PUT /inproceedings/1.json
  def update
    respond_to do |format|
      if @inproceedings.update(inproceedings_params)
        format.html { redirect_to @inproceedings, notice: 'Inproceedings was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @inproceedings.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inproceedings/1
  # DELETE /inproceedings/1.json
  def destroy
    @inproceedings.destroy
    respond_to do |format|
      format.html { redirect_to inproceedings_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inproceedings
      @inproceedings = Inproceedings.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inproceedings_params
      params.require(:inproceedings).permit(:author, :title, :booktitle, :year)
    end
end
