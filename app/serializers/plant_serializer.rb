class PlantSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price
end
