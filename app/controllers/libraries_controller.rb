class LibrariesController < ApplicationController

  def index
    @libraries = Library.all
  end

  def show
    @library = Library.find(params[:id])
  end


  def new
    # we need @restaurant in our `simple_form_for`
    @project = Project.find(params[:project_id])
    @library = Library.new
  end


  def create
    @library = Library.new(library_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @project = Project.find(params[:project_id])
    @library.project = @project
    @library.save
    redirect_to project_path(@project)
  end

  def edit
      @library = Library.find(params[:id])
    end

    def update
      @library = Library.find(params[:id])
      if @library.update(library_params)
        redirect_to project_path
      else
        render :edit
      end
    end

    def destroy
      @library = Library.find(params[:id])
      @library.destroy
      redirect_to projects_path(@library.project)
    end



  private

  def library_params
    params.require(:library).permit(:about)
  end
end

