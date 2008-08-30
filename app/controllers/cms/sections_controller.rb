class Cms::SectionsController < Cms::BaseController

  before_filter :load_parent, :only => [:new, :create]

  def index
    @section = Section.root.first
    render :template => 'cms/sections/show'
  end

  def show
    @section = Section.find(params[:id])
  end
  
  def new
    @section = @parent.children.build
  end
  
  def create
    @section = @parent.children.build(params[:section])
    if @section.save
      flash[:notice] = "Section '#{@section.name}' was created"
      redirect_to [:cms, @section]
    else
      render :action => 'new'
    end    
  end

  def edit
    @section = Section.find(params[:id])
  end
  
  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(params[:section])
      flash[:notice] = "Section '#{@section.name}' was updated"
      redirect_to [:cms, @section]
    else
      render :action => 'edit'
    end      
  end
  
  def destroy
    @section = Section.find(params[:id])
    @parent = @section.parent
    if @parent
      if @section.destroy
        flash[:notice] = "Section '#{@section.name}' was deleted"
      end
      redirect_to [:cms, @parent]
    else
      flash[:error] = "Section '#{@section.name}' cannot be deleted"
      redirect_to [:cms, @section]
    end
  end  
  
  protected
    def load_parent
      @parent = Section.find(params[:section_id])
    end

end