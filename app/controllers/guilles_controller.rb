class GuillesController < ApplicationController
  # GET /guilles
  # GET /guilles.json
  def index
    @guilles = Guille.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @guilles }
    end
  end

  # GET /guilles/1
  # GET /guilles/1.json
  def show
    @guille = Guille.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @guille }
    end
  end

  # GET /guilles/new
  # GET /guilles/new.json
  def new
    @guille = Guille.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @guille }
    end
  end

  # GET /guilles/1/edit
  def edit
    @guille = Guille.find(params[:id])
  end

  # POST /guilles
  # POST /guilles.json
  def create
    @guille = Guille.new(params[:guille])

    respond_to do |format|
      if @guille.save
        format.html { redirect_to @guille, notice: 'Guille was successfully created.' }
        format.json { render json: @guille, status: :created, location: @guille }
      else
        format.html { render action: "new" }
        format.json { render json: @guille.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /guilles/1
  # PUT /guilles/1.json
  def update
    @guille = Guille.find(params[:id])

    respond_to do |format|
      if @guille.update_attributes(params[:guille])
        format.html { redirect_to @guille, notice: 'Guille was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @guille.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guilles/1
  # DELETE /guilles/1.json
  def destroy
    @guille = Guille.find(params[:id])
    @guille.destroy

    respond_to do |format|
      format.html { redirect_to guilles_url }
      format.json { head :ok }
    end
  end
end
