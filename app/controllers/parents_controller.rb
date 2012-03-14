class ParentsController < ApplicationController
  respond_to :html

  def index
    Child.update_all(:example_datetime => "01/01/2012 00:00")

    @parent = Parent.first
    @child1, @child2 = @parent.children.all

    new_time = "01/01/2012 20:00"

    # Update child1 via nested attributes
    @parent.update_attributes!(:children_attributes => {"0" => {:id => @child1.id, :example_datetime => new_time}})

    # Update child2 directly
    @child2.update_attributes!(:example_datetime => new_time)
  end
end
