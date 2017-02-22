class LaziesController < ApplicationController
  before_action :set_lazy, only: [:show, :edit, :update, :destroy]

  # GET /lazies
  # GET /lazies.json
  def index
    @lazies = Lazy.all
  end

  # GET /lazies/1
  # GET /lazies/1.json
  def show
  end

  # GET /lazies/new
  def new
    @lazy = Lazy.new
  end

  # GET /lazies/1/edit
  def edit
  end

  # POST /lazies
  # POST /lazies.json
  def create
    @lazy = Lazy.new(lazy_params)

    respond_to do |format|
      if @lazy.save
        format.html { redirect_to @lazy, notice: 'Lazy was successfully created.' }
        format.json { render :show, status: :created, location: @lazy }
      else
        format.html { render :new }
        format.json { render json: @lazy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lazies/1
  # PATCH/PUT /lazies/1.json
  def update
    respond_to do |format|
      if @lazy.update(lazy_params)
        format.html { redirect_to @lazy, notice: 'Lazy was successfully updated.' }
        format.json { render :show, status: :ok, location: @lazy }
      else
        format.html { render :edit }
        format.json { render json: @lazy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lazies/1
  # DELETE /lazies/1.json
  def destroy
    @lazy.destroy
    respond_to do |format|
      format.html { redirect_to lazies_url, notice: 'Lazy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lazy
      @lazy = Lazy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lazy_params
      params.fetch(:lazy, {})
    end
end
