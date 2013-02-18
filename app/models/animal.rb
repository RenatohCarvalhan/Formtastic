class Animal < ActiveRecord::Base
  attr_accessible :born_on, :category_id, :female, :name, :problems_id  
  belongs_to :category
  has_many :symptoms
  has_many :problems, through: :symptoms
  validates_presence_of :name, :born_on
end
