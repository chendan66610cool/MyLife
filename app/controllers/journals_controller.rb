class JournalsController < ApplicationController
	def index
		@journals = Journal.all
		@journal = Journal.new
	end

	def create
		if !params[:journal][:title].blank? and !params[:journal][:content].blank?
			journal = Journal.new(permit_params)
			journal.save
		end
		redirect_to journals_path
	end

	def destroy
		journal = Journal.find(params[:id])
		journal.destroy if journal
		redirect_to journals_path
	end

	private
	  def permit_params
	    params.require(:journal).permit(:title, :content)
	  end
end