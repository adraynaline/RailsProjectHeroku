class OksController < ApplicationController
  before_action :set_ok, only: [:show, :edit, :update, :destroy]

  # GET /oks
  # GET /oks.json
  def index
    @oks = Ok.all
  end

  # GET /oks/1
  # GET /oks/1.json
  def show
  end

  # GET /oks/new
  def new
    @ok = Ok.new
  end

  # GET /oks/1/edit
  def edit
  end

  # POST /oks
  # POST /oks.json
  def create
    @ok = Ok.new(ok_params)

    respond_to do |format|
      if @ok.save
        format.html { redirect_to @ok, notice: 'Ok was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ok }
      else
        format.html { render action: 'new' }
        format.json { render json: @ok.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oks/1
  # PATCH/PUT /oks/1.json
  def update
    respond_to do |format|
      if @ok.update(ok_params)
        format.html { redirect_to @ok, notice: 'Ok was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ok.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oks/1
  # DELETE /oks/1.json
  def destroy
    @ok.destroy
    respond_to do |format|
      format.html { redirect_to oks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ok
      @ok = Ok.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ok_params
      params.require(:ok).permit(:name)
    end
end
