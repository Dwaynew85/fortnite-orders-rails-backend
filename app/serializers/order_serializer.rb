class OrderSerializer < ActiveModel::Serializer
  attributes :id, :total, :user, :items
end
