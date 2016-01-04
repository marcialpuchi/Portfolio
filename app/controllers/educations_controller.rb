class EducationsController < ApplicationController
	before_action :find_edu, only: [:show, :edit, :update, :destroy]

	def index
	end

	def new
		@education=Education.new
	end

	def create
		@education=Education.new edu_params

		if @education.save
			redirect_to @education
		else
			render 'new'
		end
	end

	def show
	end

	def edit
		
	end

	def update
		if @education.update edu_params
			redirect_to @education
		else
			render 'edit'
		end
	end

	def destroy
		@education.destroy
		redirect_to educations_path
	end

	private

	def edu_params
		params.require(:education).permit(
			:institution,
			:degree,
			:start,
			:end,
			:short_description,
			:full_description
		)
	end

	def find_edu
		@education = Education.find(params[:id])
	end

end
