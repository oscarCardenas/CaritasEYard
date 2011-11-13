class SocialWorksController < ApplicationController
  # GET /social_works
  # GET /social_works.xml
  def index
    @social_works = SocialWork.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @social_works }
    end
  end

  # GET /social_works/1
  # GET /social_works/1.xml
  def show
    @social_work = SocialWork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @social_work }
    end
  end
  
  # GET /social_works/1
  # GET /social_works/1.xml
  def show_public       
    
    @social_work = SocialWork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @social_work }
    end
  end

  # show_public
   def show_public
    @social_work = SocialWork.find(params[:id])

    respond_to do |format|
      format.html # show_public.html.erb
      format.xml  { render :xml => @social_work}
    end
  end
  # GET /social_works/new
  # GET /social_works/new.xml
  def new
    @social_work = SocialWork.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @social_work }
    end
  end

  # GET /social_works/1/edit
  def edit
    @social_work = SocialWork.find(params[:id])
  end

  # POST /social_works
  # POST /social_works.xml
  def create
    @social_work = SocialWork.new(params[:social_work])

    respond_to do |format|
      if @social_work.save
        format.html { redirect_to(@social_work, :notice => 'Obra Social Fue Creada Exitosamente') }
        format.xml  { render :xml => @social_work, :status => :created, :location => @social_work }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @social_work.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /social_works/1
  # PUT /social_works/1.xml
  def update
    @social_work = SocialWork.find(params[:id])

    respond_to do |format|
      if @social_work.update_attributes(params[:social_work])
        format.html { redirect_to(@social_work, :notice => 'Obra Social Fue Editada Exitosamente') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @social_work.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /social_works/1
  # DELETE /social_works/1.xml
  def destroy
    @social_work = SocialWork.find(params[:id])
    @social_work.destroy

    respond_to do |format|
      format.html { redirect_to(social_works_url) }
      format.xml  { head :ok }
    end
  end
end
