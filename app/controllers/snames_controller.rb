require 'csv'
#this is the scaffold names snames 
class SnamesController < ApplicationController

  # GET /snames
  # GET /snames.json
  def index
    
    @snames = Sname.search(params[:search])
   
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @snames }
     end
  end

  # GET /snames/1
  # GET /snames/1.json
  def show
    @sname = Sname.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sname }
    end
  end

  # GET /snames/new
  # GET /snames/new.json
  def new
    @sname = Sname.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sname }
    end
  end

  # GET /snames/1/edit
  def edit
    @sname = Sname.find(params[:id])
  end

  # POST /snames
  # POST /snames.json
  def create
    @sname = Sname.new(params[:sname])

    respond_to do |format|
      if @sname.save
        format.html { redirect_to @sname, notice: 'Sname was successfully created.' }
        format.json { render json: @sname, status: :created, location: @sname }
      else
        format.html { render action: "new" }
        format.json { render json: @sname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /snames/1
  # PUT /snames/1.json
  def update
    @sname = Sname.find(params[:id])

    respond_to do |format|
      if @sname.update_attributes(params[:sname])
        format.html { redirect_to @sname, notice: 'Sname was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snames/1
  # DELETE /snames/1.json
  def destroy
    @sname = Sname.find(params[:id])
    @sname.destroy

    respond_to do |format|
      format.html { redirect_to snames_url }
      format.json { head :no_content }
    end
  end



#method use to import csv file 

def import
  Sname.import(params[:file])
  redirect_to root_url, notice: "Products imported."
end




end
