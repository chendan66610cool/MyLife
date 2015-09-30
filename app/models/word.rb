class Word < ActiveRecord::Base
	validates :prefix, :presence => true
	validates :word, :presence => true
	validates :explanation, :presence => true
end