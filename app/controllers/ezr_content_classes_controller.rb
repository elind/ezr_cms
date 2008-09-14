class EzrContentClassesController < ApplicationController
  layout 'ezr'

  # GET /ezr_content_classes
  # GET /ezr_content_classes.xml
  def index
    @ezr_content_classes = EzrContentClass.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ezr_content_classes }
    end
  end

  # GET /ezr_content_classes/1
  # GET /ezr_content_classes/1.xml
  def show
    @ezr_content_class = EzrContentClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ezr_content_class }
    end
  end

  # GET /ezr_content_classes/new
  # GET /ezr_content_classes/new.xml
  def new
    @ezr_content_class = EzrContentClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ezr_content_class }
    end
  end

  # GET /ezr_content_classes/1/edit
  def edit
    @ezr_content_class = EzrContentClass.find(params[:id])
  end

  # POST /ezr_content_classes
  # POST /ezr_content_classes.xml
  def create
    @ezr_content_class = EzrContentClass.new(params[:ezr_content_class])

    respond_to do |format|
      if @ezr_content_class.save
        flash[:notice] = 'EzrContentClass was successfully created.'
        format.html { redirect_to(@ezr_content_class) }
        format.xml  { render :xml => @ezr_content_class, :status => :created, :location => @ezr_content_class }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ezr_content_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ezr_content_classes/1
  # PUT /ezr_content_classes/1.xml
  def update
    @ezr_content_class = EzrContentClass.find(params[:id])

    respond_to do |format|
      if @ezr_content_class.update_attributes(params[:ezr_content_class])
        flash[:notice] = 'EzrContentClass was successfully updated.'
        format.html { redirect_to(@ezr_content_class) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ezr_content_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ezr_content_classes/1
  # DELETE /ezr_content_classes/1.xml
  def destroy
    @ezr_content_class = EzrContentClass.find(params[:id])
    @ezr_content_class.destroy

    respond_to do |format|
      format.html { redirect_to(ezr_content_classes_url) }
      format.xml  { head :ok }
    end
  end
end
