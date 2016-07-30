class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :notes, :done
end
