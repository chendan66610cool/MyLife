class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
    	t.string :title
    	t.text :content
    end
  end
end
