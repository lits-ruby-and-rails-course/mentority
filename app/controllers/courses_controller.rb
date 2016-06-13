class CoursesController<ApplicationController

def index
  @courses=Course.all
    render layout: 'landing'
end

def create
end

def new
end

def edit
end

def show
end

def update
end

def destroy
end

end
