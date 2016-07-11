class LearningController < ActionController::Base

	def show
		@learning = Learning.find(params[:id])
	end

	
	def apply
	@course = Course.find learning_params[:course]		
	user = User.find learning_params[:user_id]

		@learning = Learning.new(course: @course, user: user, status: :pending)
	
		@learning.save
#	  	redirect_to learning_show_path
	    redirect_to @course
	end

private
  def learning_params
    params.require(:learning).permit(:course, :user_id, :status)
  end

end



