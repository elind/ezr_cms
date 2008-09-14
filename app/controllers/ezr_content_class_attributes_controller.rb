class EzrContentClassAttributesController < ApplicationController
  layout 'ezr'
  
  # GET /ezr_content_class_attributes
  # GET /ezr_content_class_attributes.xml
  def index
    @ezr_content_class_attributes = EzrContentClassAttribute.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ezr_content_class_attributes }
    end
  end

  # GET /ezr_content_class_attributes/1
  # GET /ezr_content_class_attributes/1.xml
  def show
    @ezr_content_class_attribute = EzrContentClassAttribute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ezr_content_class_attribute }
    end
  end

  # GET /ezr_content_class_attributes/new
  # GET /ezr_content_class_attributes/new.xml
  def new
    @ezr_content_class_attribute = EzrContentClassAttribute.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ezr_content_class_attribute }
    end
  end

  # GET /ezr_content_class_attributes/1/edit
  def edit
    @ezr_content_class_attribute = EzrContentClassAttribute.find(params[:id])
  end

  # POST /ezr_content_class_attributes
  # POST /ezr_content_class_attributes.xml
  def create
    @ezr_content_class_attribute = EzrContentClassAttribute.new(params[:ezr_content_class_attribute])

    respond_to do |format|
      if @ezr_content_class_attribute.save
        flash[:notice] = 'EzrContentClassAttribute was successfully created.'
        format.html { redirect_to(@ezr_content_class_attribute) }
        format.xml  { render :xml => @ezr_content_class_attribute, :status => :created, :location => @ezr_content_class_attribute }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ezr_content_class_attribute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ezr_content_class_attributes/1
  # PUT /ezr_content_class_attributes/1.xml
  def update
    @ezr_content_class_attribute = EzrContentClassAttribute.find(params[:id])

    respond_to do |format|
      if @ezr_content_class_attribute.update_attributes(params[:ezr_content_class_attribute])
        flash[:notice] = 'EzrContentClassAttribute was successfully updated.'
        format.html { redirect_to(@ezr_content_class_attribute) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ezr_content_class_attribute.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ezr_content_class_attributes/1
  # DELETE /ezr_content_class_attributes/1.xml
  def destroy
    @ezr_content_class_attribute = EzrContentClassAttribute.find(params[:id])
    @ezr_content_class_attribute.destroy

    respond_to do |format|
      format.html { redirect_to(ezr_content_class_attributes_url) }
      format.xml  { head :ok }
    end
  end
end
