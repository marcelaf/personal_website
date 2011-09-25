class OrderItemsController < ApplicationController
  # GET /order_items
  # GET /order_items.json
  def index
    @order_items = OrderItem.all
    #@date = Date.parse('2011-09-23') #nuevo
    #if params[:dia]
     # @date = Date.parse('2011-09-23')
    #else
     # @date = Date.parse('2011-09-25')
    #end
    
    #if params[:order]
     #   @date = Date.parse(params[:order][:"date(1i)"].to_i,params[:order][:"date(2i)"].to_i,params[:order][:"date(3i)"].to_i)
    #end
    #@date = params[:date]
     
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @order_items }
    end
  end

  # GET /order_items/1
  # GET /order_items/1.json
  def show
    #@order_item = OrderItem.find(params[:id])    linea original
    @order_items = OrderItem.all
    #@date = params[:id]
    @date = Date.parse(params[:order][:"date(1i)"]+"-"+params[:order][:"date(2i)"]+"-"+params[:order][:"date(3i)"])
    #@fecha = Date.civil(params[:order][:"date(1i)"].to_i,params[:order][:"date(2i)"].to_i,params[:order][:"date(3i)"].to_i)


    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @order_item }
    end
  end

  # GET /order_items/new
  # GET /order_items/new.json
  def new
    @order_item = OrderItem.new
    @date = Date.new  #nuevo

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @order_item }
    end
  end

  # GET /order_items/1/edit
  def edit
    @order_item = OrderItem.find(params[:id])
  end

  # POST /order_items
  # POST /order_items.json
  def create
    @order_item = OrderItem.new(params[:order_item])

    respond_to do |format|
      if @order_item.save
        format.html { redirect_to @order_item, :notice => 'Order item was successfully created.' }
        format.json { render :json => @order_item, :status => :created, :location => @order_item }
      else
        format.html { render :action => "new" }
        format.json { render :json => @order_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /order_items/1
  # PUT /order_items/1.json
  def update
    @order_item = OrderItem.find(params[:id])

    respond_to do |format|
      if @order_item.update_attributes(params[:order_item])
        format.html { redirect_to @order_item, :notice => 'Order item was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @order_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /order_items/1
  # DELETE /order_items/1.json
  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy

    respond_to do |format|
      format.html { redirect_to order_items_url }
      format.json { head :ok }
    end
  end
end
