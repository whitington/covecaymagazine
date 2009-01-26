class CovecaysalesController < ApplicationController
  # GET /covecaysales
  # GET /covecaysales.xml

  def grid_data
    #@covecaysales = Covecaysale.find_by_sql "select * from covecaysales order by id desc limit 100"
    @covecaysales = Covecaysale.paginate :page => params[:page],
      :per_page => params[:rows],
      :order => "#{params[:sidx]} #{params[:sord]}",
      :conditions => "cc_village like '#{params[:cc_village]}%'
                      and cc_building like '#{params[:cc_building]}%'
                      and cc_unit like '#{params[:cc_unit]}%'
                      and sq_ft like '#{params[:sq_ft]}%'
                      and cast(sale_month as char) like '#{params[:sale_month]}%'
                      and cast(sale_year as char) like '#{params[:sale_year]}%'
                      and sale_price like '#{params[:sale_price]}%'"
    
    respond_to do |format|
      #format.xml { render :partial => '/users/grid_data.xml.builder', :layout => false }
      format.xml  { render :layout => false }
    end
  end

  def index
    #@covecaysales = Covecaysale.find(:all)
    #@covecaysales = Covecaysale.find_by_sql "select * from covecaysales order by id desc limit 100"
    #@covecaysales = Covecaysale.paginate :page => params[:page], :per_page => 10
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @covecaysales }
    end
  end

  # GET /covecaysales/1
  # GET /covecaysales/1.xml
  def show
    @covecaysale = Covecaysale.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @covecaysale }
    end
  end

  # GET /covecaysales/new
  # GET /covecaysales/new.xml
  def new
    @covecaysale = Covecaysale.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @covecaysale }
    end
  end

  # GET /covecaysales/1/edit
  def edit
    @covecaysale = Covecaysale.find(params[:id])
  end

  # POST /covecaysales
  # POST /covecaysales.xml
  def create
    @covecaysale = Covecaysale.new(params[:covecaysale])

    respond_to do |format|
      if @covecaysale.save
        flash[:notice] = 'covecaysale was successfully created.'
        format.html { redirect_to(@covecaysale) }
        format.xml  { render :xml => @covecaysale, :status => :created, :location => @covecaysale }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @covecaysale.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /covecaysale/1
  # PUT /covecaysale/1.xml
  def update
    @covecaysale = Covecaysale.find(params[:id])

    respond_to do |format|
      if @covecaysale.update_attributes(params[:covecaysale])
        flash[:notice] = 'covecaysale was successfully updated.'
        format.html { redirect_to(@covecaysale) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @covecaysale.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /covecaysale/1
  # DELETE /covecaysale/1.xml
  def destroy
    @covecaysale = Covecaysale.find(params[:id])
    @covecaysale.destroy

    respond_to do |format|
      format.html { redirect_to(covecaysales_url) }
      format.xml  { head :ok }
    end
  end
end
