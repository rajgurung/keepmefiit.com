# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :text
#  done       :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :notes, :done
end
