class EzrContentObjectAttributesController < ApplicationController
  # GET /ezr_content_object_attributes
  # GET /ezr_content_object_attributes.xml
  def index
    @ezr_content_object_attributes = EzrContentObjectAttribute.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ezr_content_object_attributes }
    end
  end

  # GET /ezr_content_object_attributes/1
  # GET /ezr_content_object_attributes/1.xml
  def show
    @ezr_content_object_attribute = EzrContentObjectAttribute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ezr_content_object_attribute }
    end
  end

  # GET /ezr_content_object_attributes/new
  # GET /ezr_content_object_attributes/new.xml
  def new
    @ezr_content_object_attribute = EzrContentObjectAttribute.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ezr_content_object_attribute }
    end
  end

  # GET /ezr_content_object_attributes/1/edit
  def edit
    @ezr_content_object_attribute = EzrContentObjectAttribute.find(params[:id])
  end

  # POST /ezr_content_object_attributes
  # POST /ezr_content_object_attributes.xml
  def create
    @ezr_content_object_attribute = EzrContentObjectAttribute.new(params[:ezr_content_object_attribute])

    respond_to do |format|
      if @ezr_content_object_attribute.save
        flash[:notice] = 'EzrContentObjectAttribute was successfully created.'
        format.html { redirect_to(@ezr_content_object_attribute) }
        format.xml  { render :xml => @ezr_content_object_attribute, :status => :created, :location => @ezr_content_object_attribute }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ezr_content_object_attribute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ezr_content_object_attributes/1
  # PUT /ezr_content_object_attributes/1.xml
  def update
    @ezr_content_object_attribute = EzrContentObjectAttribute.find(params[:id])

    respond_to do |format|
      if @ezr_content_object_attribute.update_attributes(params[:ezr_content_object_attribute])
        flash[:notice] = 'EzrContentObjectAttribute was successfully updated.'
        format.html { redirect_to(@ezr_content_object_attribute) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ezr_content_object_attribute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ezr_content_object_attributes/1
  # DELETE /ezr_content_object_attributes/1.xml
  def destroy
    @ezr_content_object_attribute = EzrContentObjectAttribute.find(params[:id])
    @ezr_content_object_attribute.destroy

    respond_to do |format|
      format.html { redirect_to(ezr_content_object_attributes_url) }
      format.xml  { head :ok }
    end
  end
end
