class SocialCardsController < ApplicationController
  # GET /social_cards
  # GET /social_cards.xml
  def index

    @social_cards = SocialCard.find_all_by_state(true)
    @parishes = Parish.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @social_cards }
    end
  end

  # GET /social_cards/1
  # GET /social_cards/1.xml
  def show
    @social_card = SocialCard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @social_card }
    end
  end

  # GET /social_cards/new
  # GET /social_cards/new.xml
  def new
    @social_card = SocialCard.new
    @parishes = Parish.find(:all)
    
    #session[:social_card_params] ||= {}
    #@social_card=SocialCard.new(session[:social_card_params])
    #@social_card.current_step=session[:social_card_step]
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @social_card }
   end
  end

  # GET /social_cards/1/edit
  def edit
    @social_card = SocialCard.find(params[:id])
    @parishes = Parish.find(:all)
  end

  # POST /social_cards
  # POST /social_cards.xml
  def create
    #session[:social_card_params].deep_merge!(params[:social_card]) if params[:social_card] 
   # @social_card = SocialCard.new(session[:social_card_params])
  #  @social_card.current_step = session[:social_card_step]
 #   if @social_card.valid?
#      if params[:back_button]
#        @social_card.previous_step

      #elsif @social_card.last_step?
       # @social_card.save if @social_card.all_valid?
      #else
       # @social_card.next_step
      #end
      #session[:social_card_step] = @social_card.current_step
    #end
    #if @social_card.new_record?
      #1.times {@social_card.helps.build}
     # render "new"
    #else
     # session[:social_card_step] = session[:social_card_params] = nil
     # flash[:notice] = "Ficha Social Creada Con Exito!"
    #  redirect_to @social_card
   # end
  #end
    @social_card = SocialCard.new(params[:social_card])

    respond_to do |format|
      if @social_card.save
        format.html { redirect_to(@social_card, :notice => 'La Ficha Social Fue Creada Exitosamente.') }
              format.xml  { render :xml => @social_card, :status => :created, :location => @social_card }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @social_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /social_cards/1
  # PUT /social_cards/1.xml
  def update
    @social_card = SocialCard.find(params[:id])

    respond_to do |format|
      if @social_card.update_attributes(params[:social_card])
        format.html { redirect_to(@social_card, :notice => 'La Ficha Social Fue Modificada Exitosamente.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @social_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /social_cards/1
  # DELETE /social_cards/1.xml
  def destroy
    @social_card = SocialCard.find(params[:id])
    @social_card.state ? @social_card.update_attributes(:state => false) : @social_card.update_attributes(:state => true)    

    respond_to do |format|
      format.html { redirect_to(social_cards_url) }
      format.xml  { head :ok }
    end
  end
end
