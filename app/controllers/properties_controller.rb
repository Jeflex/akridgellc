class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
    is_admin?
    @property_attachments = @property.property_attachments.all
  end

  def list
    is_admin?
    @properties=Property.all
  end
  # GET /properties/new
  def new
    is_admin?
    @property = Property.new
    @property_attachment = @property.property_attachments.build
  end

  # GET /properties/1/edit
  def edit
    is_admin?
  end

  # POST /properties
  # POST /properties.json
  def create
    is_admin?
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        params[:property_attachments]['avatar'].each do |a|
          @property_attachment = @property.property_attachments.create!(:avatar => a)
          @property_attachment.property_id=@property.id
        end
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    is_admin?
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    is_admin?
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_path, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:id, :address, :description, property_attachments_attributes: [:id, :post_id, :avatar])
    end
end
