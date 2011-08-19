class NflplayersController < ApplicationController
  # GET /nflplayers
  # GET /nflplayers.xml
  def index
    @nflplayers = Nflplayer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nflplayers }
    end
  end

  # GET /nflplayers/1
  # GET /nflplayers/1.xml
  def show
    @nflplayer = Nflplayer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nflplayer }
    end
  end

  # GET /nflplayers/new
  # GET /nflplayers/new.xml
  def new
    @nflplayer = Nflplayer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nflplayer }
    end
  end

  # GET /nflplayers/1/edit
  def edit
    @nflplayer = Nflplayer.find(params[:id])
  end

  # POST /nflplayers
  # POST /nflplayers.xml
  def create
    @nflplayer = Nflplayer.new(params[:nflplayer])

    respond_to do |format|
      if @nflplayer.save
        format.html { redirect_to(@nflplayer, :notice => 'Nflplayer was successfully created.') }
        format.xml  { render :xml => @nflplayer, :status => :created, :location => @nflplayer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nflplayer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nflplayers/1
  # PUT /nflplayers/1.xml
  def update
    @nflplayer = Nflplayer.find(params[:id])

    respond_to do |format|
      if @nflplayer.update_attributes(params[:nflplayer])
        format.html { redirect_to(@nflplayer, :notice => 'Nflplayer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nflplayer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nflplayers/1
  # DELETE /nflplayers/1.xml
  def destroy
    @nflplayer = Nflplayer.find(params[:id])
    @nflplayer.destroy

    respond_to do |format|
      format.html { redirect_to(nflplayers_url) }
      format.xml  { head :ok }
    end
  end
end
