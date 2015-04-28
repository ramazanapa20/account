class AccountListsController < ApplicationController
  before_action :set_account_list, only: [:show, :edit, :update, :destroy]

  # GET /account_lists
  # GET /account_lists.json
  def index
    @account_lists = AccountList.all
  end

  # GET /account_lists/1
  # GET /account_lists/1.json
  def show
  end

  # GET /account_lists/new
  def new
    @account_list = AccountList.new
  end

  # GET /account_lists/1/edit
  def edit
  end

  # POST /account_lists
  # POST /account_lists.json
  def create
    @account_list = AccountList.new(account_list_params)

    respond_to do |format|
      if @account_list.save
        format.html { redirect_to @account_list, notice: 'Account list was successfully created.' }
        format.json { render :show, status: :created, location: @account_list }
      else
        format.html { render :new }
        format.json { render json: @account_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_lists/1
  # PATCH/PUT /account_lists/1.json
  def update
    respond_to do |format|
      if @account_list.update(account_list_params)
        format.html { redirect_to @account_list, notice: 'Account list was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_list }
      else
        format.html { render :edit }
        format.json { render json: @account_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_lists/1
  # DELETE /account_lists/1.json
  def destroy
    @account_list.destroy
    respond_to do |format|
      format.html { redirect_to account_lists_url, notice: 'Account list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_list
      @account_list = AccountList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_list_params
      params.require(:account_list).permit(:gelirlerim, :giderlerim)
    end
end
