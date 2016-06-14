class CoursesController<ApplicationController

def index
  @courses=Course.all
    render layout: 'landing'
end

def create
	@course = Course.new(course_params)
	
	@course.save
  	redirect_to @course
end

def new
	@course = Course.new
	  render layout: 'landing'
end

def edit
	 @course = Course.find(params[:id])
end

def show
	@course = Course.find(params[:id])
end

def update
end

def destroy
end


private

  def course_params
    params.require(:course).permit(:title, :description)
  end

end
