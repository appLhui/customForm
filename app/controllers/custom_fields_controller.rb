class CustomFieldsController < ApplicationController
  # GET /custom_fields
  # GET /custom_fields.json
  def index
    @custom_fields = CustomField.find_all_by_custom_table_id(params[:custom_table_id])
    respond_to do |format|
      format.json { render json: @custom_fields }
    end
  end

  # GET /custom_fields/1
  # GET /custom_fields/1.json
  def show
    @custom_field = CustomField.find(params[:id])

    respond_to do |format|
      format.json { render json: @custom_field }
    end
  end

  # GET /custom_fields/new
  # GET /custom_fields/new.json
  def new
    @custom_field = CustomField.new

    respond_to do |format|
      format.json { render json: @custom_field }
    end
  end

  # GET /custom_fields/1/edit
  def edit
    @custom_field = CustomField.find(params[:id])
  end

  # POST /custom_fields
  # POST /custom_fields.json
  def create
    @custom_field = CustomField.new(params[:custom_field])

    respond_to do |format|
      if @custom_field.save
        format.json { render json: @custom_field, status: :created, location: @custom_field }
      else
        format.json { render json: @custom_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /custom_fields/1
  # PUT /custom_fields/1.json
  def update
    @custom_field = CustomField.find(params[:id])

    respond_to do |format|
      if @custom_field.update_attributes(params[:custom_field])
        format.json { head :no_content }
      else
        format.json { render json: @custom_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_fields/1
  # DELETE /custom_fields/1.json
  def destroy
    @custom_field = CustomField.find(params[:id])
    @custom_field.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end
end
