class EzrContentObjectsController < ApplicationController
  layout 'ezr'

  # GET /ezr_content_objects
  # GET /ezr_content_objects.xml
  def index
    @ezr_content_objects = EzrContentObject.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ezr_content_objects }
    end
  end

  # GET /ezr_content_objects/1
  # GET /ezr_content_objects/1.xml
  def show
    @ezr_content_object = EzrContentObject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ezr_content_object }
    end
  end

  # GET /ezr_content_objects/new
  # GET /ezr_content_objects/new.xml
  def new
    @ezr_content_object = EzrContentObject.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ezr_content_object }
    end
  end

  # GET /ezr_content_objects/1/edit
  def edit
    @ezr_content_object = EzrContentObject.find(params[:id])
  end

  # POST /ezr_content_objects
  # POST /ezr_content_objects.xml
  def create
    @ezr_content_object = EzrContentObject.new(params[:ezr_content_object])

    respond_to do |format|
      if @ezr_content_object.save
        flash[:notice] = 'EzrContentObject was successfully created.'
        format.html { redirect_to(@ezr_content_object) }
        format.xml  { render :xml => @ezr_content_object, :status => :created, :location => @ezr_content_object }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ezr_content_object.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ezr_content_objects/1
  # PUT /ezr_content_objects/1.xml
  def update
    @ezr_content_object = EzrContentObject.find(params[:id])

    respond_to do |format|
      if @ezr_content_object.update_attributes(params[:ezr_content_object])
        flash[:notice] = 'EzrContentObject was successfully updated.'
        format.html { redirect_to(@ezr_content_object) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ezr_content_object.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ezr_content_objects/1
  # DELETE /ezr_content_objects/1.xml
  def destroy
    @ezr_content_object = EzrContentObject.find(params[:id])
    @ezr_content_object.destroy

    respond_to do |format|
      format.html { redirect_to(ezr_content_objects_url) }
      format.xml  { head :ok }
    end
  end
end
