class Rubric < ActiveRecord::Base
  has_many :books
  def self.names
    self.pluck(:name)
  end
end
