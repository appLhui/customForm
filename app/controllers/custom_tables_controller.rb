class CustomTablesController < ApplicationController
  # GET /custom_tables
  # GET /custom_tables.json
  def index
    @custom_tables = CustomTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @custom_tables }
    end
  end

  # GET /custom_tables/1
  # GET /custom_tables/1.json
  def show
    @custom_table = CustomTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @custom_table }
    end
  end

  # GET /custom_tables/new
  # GET /custom_tables/new.json
  def new
    @custom_table = CustomTable.new

    respond_to do |format|
      format.json { render json: @custom_table }
    end
  end

  # GET /custom_tables/1/edit
  def edit
    @custom_table = CustomTable.find(params[:id])
  end

  # POST /custom_tables
  # POST /custom_tables.json
  def create
    @custom_table = CustomTable.new(params[:custom_table])

    respond_to do |format|
      if @custom_table.save
        format.html { redirect_to @custom_table, notice: 'Custom table was successfully created.' }
        format.json { render json: @custom_table, status: :created, location: @custom_table }
      else
        format.html { render action: "new" }
        format.json { render json: @custom_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /custom_tables/1
  # PUT /custom_tables/1.json
  def update
    @custom_table = CustomTable.find(params[:id])

    respond_to do |format|
      if @custom_table.update_attributes(params[:custom_table])
        format.html { redirect_to @custom_table, notice: 'Custom table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @custom_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_tables/1
  # DELETE /custom_tables/1.json
  def destroy
    @custom_table = CustomTable.find(params[:id])
    @custom_table.destroy

    respond_to do |format|
      format.html { redirect_to custom_tables_url }
      format.json { head :no_content }
    end
  end
end
