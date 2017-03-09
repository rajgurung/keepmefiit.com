class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :pictograms
end
