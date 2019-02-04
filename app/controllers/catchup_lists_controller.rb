class CatchupListsController < ApplicationController
  before_action :set_catchup_list, only: [:show, :edit, :update, :destroy]

  # GET /catchup_lists
  # GET /catchup_lists.json
  def index
    @catchup_lists = CatchupList.all
  end

  # GET /catchup_lists/1
  # GET /catchup_lists/1.json
  def show
  end

  # GET /catchup_lists/new
  def new
    @catchup_list = CatchupList.new
  end

  # GET /catchup_lists/1/edit
  def edit
  end

  # POST /catchup_lists
  # POST /catchup_lists.json
  def create
    @catchup_list = CatchupList.new(catchup_list_params)

    respond_to do |format|
      if @catchup_list.save
        format.html { redirect_to @catchup_list, notice: 'Catchup list was successfully created.' }
        format.json { render :show, status: :created, location: @catchup_list }
      else
        format.html { render :new }
        format.json { render json: @catchup_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catchup_lists/1
  # PATCH/PUT /catchup_lists/1.json
  def update
    respond_to do |format|
      if @catchup_list.update(catchup_list_params)
        format.html { redirect_to @catchup_list, notice: 'Catchup list was successfully updated.' }
        format.json { render :show, status: :ok, location: @catchup_list }
      else
        format.html { render :edit }
        format.json { render json: @catchup_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catchup_lists/1
  # DELETE /catchup_lists/1.json
  def destroy
    @catchup_list.destroy
    respond_to do |format|
      format.html { redirect_to catchup_lists_url, notice: 'Catchup list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catchup_list
      @catchup_list = CatchupList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catchup_list_params
      params.require(:catchup_list).permit(:title, :description)
    end
end
