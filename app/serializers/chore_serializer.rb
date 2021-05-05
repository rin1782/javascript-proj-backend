class ChoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :kid_id
  belongs_to :kid
end
