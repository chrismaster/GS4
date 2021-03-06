class CallQueuesController < ApplicationController
  
  before_filter :authenticate_user!
  
  # https://github.com/ryanb/cancan/wiki/authorizing-controller-actions
  load_and_authorize_resource
  

  # GET /call_queues
  # GET /call_queues.xml
  def index
    @call_queues = CallQueue.includes(:extensions).order('extensions.extension ASC').accessible_by( current_ability, :index ).all

    respond_to do |format|
      if CallQueue.all.blank? 
        format.html { redirect_to(new_call_queue_path, :notice => t(:no_call_queue_in_db_so_redirect_to_new)) }
      else
        format.html # index.html.erb
      end
      format.xml  { render :xml => @call_queues }
    end
  end

  # GET /call_queues/1
  # GET /call_queues/1.xml
  def show
    @call_queue = CallQueue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @call_queue }
    end
  end

  # GET /call_queues/new
  # GET /call_queues/new.xml
  def new
    @call_queue = CallQueue.new
    @call_queue.uuid = "-queue-#{SecureRandom.hex(10)}"
    @call_queue.name = "#{t(:call_queue)}-#{CallQueue.count + 1}"

    extension = @call_queue.extensions.build(
      :extension => Extension.next_unused_extension,
      :destination => @call_queue.uuid,
      :active => true,
    )
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @call_queue }
    end
  end

  # GET /call_queues/1/edit
  def edit
    @call_queue = CallQueue.find(params[:id])
  end

  # POST /call_queues
  # POST /call_queues.xml
  def create
    @call_queue = CallQueue.new(params[:call_queue])

    respond_to do |format|
      if @call_queue.save
        format.html { redirect_to(@call_queue, :notice => t(:call_queue_created)) }
        format.xml  { render :xml => @call_queue, :status => :created, :location => @call_queue }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @call_queue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /call_queues/1
  # PUT /call_queues/1.xml
  def update
    @call_queue = CallQueue.find(params[:id])

    respond_to do |format|
      if @call_queue.update_attributes(params[:call_queue])
        format.html { redirect_to(@call_queue, :notice => t(:call_queue_updated)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @call_queue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /call_queues/1
  # DELETE /call_queues/1.xml
  def destroy
    @call_queue = CallQueue.find(params[:id])
    @call_queue.destroy

    respond_to do |format|
      format.html { redirect_to(call_queues_url) }
      format.xml  { head :ok }
    end
  end
  
  def confirm_destroy
    @call_queue = CallQueue.find(params[:id])
  end
  
end
