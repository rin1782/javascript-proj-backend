class KidSerializer < ActiveModel::Serializer
  attributes :id, :name, :chores
  has_many :chores
end
