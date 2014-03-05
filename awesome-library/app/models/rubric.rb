class Rubric < ActiveRecord::Base
  resourcify
  has_many :books
end
