class KidSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name 
  has_many :chores
end
