class ChoreSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_one :kid
end
