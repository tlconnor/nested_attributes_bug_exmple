class Child < ActiveRecord::Base
  belongs_to :parent, :inverse_of => :children
end
