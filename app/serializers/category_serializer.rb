# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :notes
end
