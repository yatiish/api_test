class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :owner_id
end
