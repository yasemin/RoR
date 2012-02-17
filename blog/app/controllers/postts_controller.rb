class PosttsController < ApplicationController
  # GET /postts
  # GET /postts.json
  def index
    @postts = Postt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @postts }
    end
  end

  # GET /postts/1
  # GET /postts/1.json
  def show
    @postt = Postt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @postt }
    end
  end

  # GET /postts/new
  # GET /postts/new.json
  def new
    @postt = Postt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @postt }
    end
  end

  # GET /postts/1/edit
  def edit
    @postt = Postt.find(params[:id])
  end

  # POST /postts
  # POST /postts.json
  def create
    @postt = Postt.new(params[:postt])

    respond_to do |format|
      if @postt.save
        format.html { redirect_to @postt, notice: 'Postt was successfully created.' }
        format.json { render json: @postt, status: :created, location: @postt }
      else
        format.html { render action: "new" }
        format.json { render json: @postt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /postts/1
  # PUT /postts/1.json
  def update
    @postt = Postt.find(params[:id])

    respond_to do |format|
      if @postt.update_attributes(params[:postt])
        format.html { redirect_to @postt, notice: 'Postt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @postt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postts/1
  # DELETE /postts/1.json
  def destroy
    @postt = Postt.find(params[:id])
    @postt.destroy

    respond_to do |format|
      format.html { redirect_to postts_url }
      format.json { head :no_content }
    end
  end
end
