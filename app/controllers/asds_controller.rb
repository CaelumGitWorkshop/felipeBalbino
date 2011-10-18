class AsdsController < ApplicationController
  # GET /asds
  # GET /asds.xml
  def index
    @asds = Asd.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @asds }
    end
  end

  # GET /asds/1
  # GET /asds/1.xml
  def show
    @asd = Asd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @asd }
    end
  end

  # GET /asds/new
  # GET /asds/new.xml
  def new
    @asd = Asd.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @asd }
    end
  end

  # GET /asds/1/edit
  def edit
    @asd = Asd.find(params[:id])
  end

  # POST /asds
  # POST /asds.xml
  def create
    @asd = Asd.new(params[:asd])

    respond_to do |format|
      if @asd.save
        format.html { redirect_to(@asd, :notice => 'Asd was successfully created.') }
        format.xml  { render :xml => @asd, :status => :created, :location => @asd }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @asd.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /asds/1
  # PUT /asds/1.xml
  def update
    @asd = Asd.find(params[:id])

    respond_to do |format|
      if @asd.update_attributes(params[:asd])
        format.html { redirect_to(@asd, :notice => 'Asd was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @asd.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /asds/1
  # DELETE /asds/1.xml
  def destroy
    @asd = Asd.find(params[:id])
    @asd.destroy

    respond_to do |format|
      format.html { redirect_to(asds_url) }
      format.xml  { head :ok }
    end
  end
end
