class WordsController < ApplicationController
	def index
		@word = Word.new
		words = Word.all.order(:word)
		@words_hash = Hash.new
		(65..90).each do |num|
			temp_arr = words.select {|w| w.prefix == num.chr }
			@words_hash[num.chr] = temp_arr if temp_arr.count > 0
		end
	end

	def create
		if !params[:word][:word].blank? and !params[:word][:explanation].blank?
			word = Word.new(permit_params)
			word.prefix = word.word[0].upcase
			word.save
		end
		redirect_to words_path
	end

	def destroy
		word = Word.find(params[:id])
		word.destroy if word
		redirect_to words_path
	end

	private
	  def permit_params
	    params.require(:word).permit(:prefix, :word, :explanation)
	  end
end