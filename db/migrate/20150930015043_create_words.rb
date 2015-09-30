class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
    	t.string :prefix
    	t.string :word
    	t.text :explanation
    end
  end
end
