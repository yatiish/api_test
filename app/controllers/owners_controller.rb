class OwnersController < ApplicationController
  before_action :set_owner, only: [:update, :destroy]

  # GET /owners
  # GET /owners.json
  def index
    @owners = Owner.all

    render json: @owners
  end

  # GET /owners/1
  # GET /owners/1.json
  def show
    @owner = Owner.where(name: params[:id])
    render json: @owner
  end

  # POST /owners
  # POST /owners.json
  def create
    @owner = Owner.new(owner_params)

    if @owner.save
      render json: @owner, status: :created, location: @owner
    else
      render json: @owner.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /owners/1
  # PATCH/PUT /owners/1.json
  def update
    @owner = Owner.find(params[:id])

    if @owner.update(owner_params)
      head :no_content
    else
      render json: @owner.errors, status: :unprocessable_entity
    end
  end

  # DELETE /owners/1
  # DELETE /owners/1.json
  def destroy
    @owner.destroy

    head :no_content
  end
  
  def owner_articles
    owner = Owner.where(name: params[:id])
	@articles = owner.first.articles if owner.present?
    render json: {:owner_name => owner.first.name, :articles => @articles }
  end
  
  def owner_details
    @owner = Owner.where(name: params[:id])
    render json: @owner
  end    

  private

    def set_owner
      @owner = Owner.find(params[:id])
    end

    def owner_params
      params.require(:owner).permit(:name)
    end
end
