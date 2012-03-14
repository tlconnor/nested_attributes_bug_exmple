class Parent < ActiveRecord::Base
  has_many :children, :dependent => :destroy, :inverse_of => :parent
  accepts_nested_attributes_for :children, :allow_destroy => true
  validates_associated :children
end
