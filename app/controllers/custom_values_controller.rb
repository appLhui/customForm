class CustomValuesController < ApplicationController
  # GET /custom_values
  # GET /custom_values.json
  def index
    @custom_values = CustomValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @custom_values }
    end
  end

  # GET /custom_values/1
  # GET /custom_values/1.json
  def show
    @custom_value = CustomValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @custom_value }
    end
  end

  # GET /custom_values/new
  # GET /custom_values/new.json
  def new
    @custom_value = CustomValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @custom_value }
    end
  end

  # GET /custom_values/1/edit
  def edit
    @custom_value = CustomValue.find(params[:id])
  end

  # POST /custom_values
  # POST /custom_values.json
  def create
    @custom_value = CustomValue.new(params[:custom_value])

    respond_to do |format|
      if @custom_value.save
        format.html { redirect_to @custom_value, notice: 'Custom value was successfully created.' }
        format.json { render json: @custom_value, status: :created, location: @custom_value }
      else
        format.html { render action: "new" }
        format.json { render json: @custom_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /custom_values/1
  # PUT /custom_values/1.json
  def update
    @custom_value = CustomValue.find(params[:id])

    respond_to do |format|
      if @custom_value.update_attributes(params[:custom_value])
        format.html { redirect_to @custom_value, notice: 'Custom value was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @custom_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_values/1
  # DELETE /custom_values/1.json
  def destroy
    @custom_value = CustomValue.find(params[:id])
    @custom_value.destroy

    respond_to do |format|
      format.html { redirect_to custom_values_url }
      format.json { head :no_content }
    end
  end
end
