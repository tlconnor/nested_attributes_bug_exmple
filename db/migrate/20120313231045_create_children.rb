class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.belongs_to :parent
      t.datetime :example_datetime

      t.timestamps
    end

    parent = Parent.create!
    child1 = parent.children.create!(:example_datetime => "01/01/2012 00:00")
    child2 = parent.children.create!(:example_datetime => "01/01/2012 00:00")
    
  end
end
