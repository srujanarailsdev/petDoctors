class PetsController < ApplicationController
  # GET /pets
  # GET /pets.json

  before_filter :authenticate_user!
  before_filter :get_profile!

  def index
    @pets = @profile.pets

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pets }
    end
  end

  # GET /pets/1
  # GET /pets/1.json
  def show
    @pet = @profile.pets.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pet }
    end
  end

  # GET /pets/new
  # GET /pets/new.json
  def new
    @pet = @profile.pets.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pet }
    end
  end

  # GET /pets/1/edit
  def edit
    @pet = @profile.pets.find(params[:id])
  end

  # POST /pets
  # POST /pets.json
  def create
    @pet = @profile.pets.new(params[:pet])

    respond_to do |format|
      if @pet.save
        format.html { redirect_to @pet, notice: 'Pet was successfully created.' }
        format.json { render json: @pet, status: :created, location: @pet }
      else
        format.html { render action: "new" }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pets/1
  # PUT /pets/1.json
  def update
    @pet = @profile.pets.find(params[:id])

    respond_to do |format|
      if @pet.update_attributes(params[:pet])
        format.html { redirect_to @pet, notice: 'Pet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @pet = @profile.pets.find(params[:id])
    @pet.destroy

    respond_to do |format|
      format.html { redirect_to pets_url }
      format.json { head :no_content }
    end
  end

  private
  def get_profile!
    @profile = current_user.profile
  end

end
