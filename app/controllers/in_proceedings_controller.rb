class InProceedingsController < ApplicationController
  before_action :set_in_proceeding, only: [:show, :edit, :update, :destroy]

  # GET /in_proceedings
  # GET /in_proceedings.json
  def index
    @in_proceedings = InProceeding.all
  end

  # GET /in_proceedings/1
  # GET /in_proceedings/1.json
  def show
  end

  # GET /in_proceedings/new
  def new
    @in_proceeding = InProceeding.new
    #@author = Author.new
    @publisher = Publisher.new
  end

  # GET /in_proceedings/1/edit
  def edit
  end

  # POST /in_proceedings
  # POST /in_proceedings.json
  def create
    @in_proceeding = InProceeding.new(in_proceeding_params)

    #@publisher.save
    respond_to do |format|
      if @in_proceeding.save
        format.html { redirect_to @in_proceeding, notice: 'In proceeding was successfully created.' }
        format.json { render action: 'show', status: :created, location: @in_proceeding }
      else
        format.html { render action: 'new' }
        format.json { render json: @in_proceeding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /in_proceedings/1
  # PATCH/PUT /in_proceedings/1.json
  def update
    respond_to do |format|
      if @in_proceeding.update(in_proceeding_params)
        format.html { redirect_to @in_proceeding, notice: 'In proceeding was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @in_proceeding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /in_proceedings/1
  # DELETE /in_proceedings/1.json
  def destroy
    @in_proceeding.destroy
    respond_to do |format|
      format.html { redirect_to in_proceedings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_in_proceeding
      @in_proceeding = InProceeding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def in_proceeding_params
      params.require(:in_proceeding).permit(:title, :booktitle, :year, :author, :name)
    end
end
