class Journal < ActiveRecord::Base
	has_many_kindeditor_assets :attachments, :dependent => :destroy
	validates :title, :presence => true
	validates :content, :presence => true
end