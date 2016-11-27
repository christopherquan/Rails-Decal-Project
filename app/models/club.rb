# == Schema Information
#
# Table name: clubs
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Club < ActiveRecord::Base
	has_many :users
	validates :name, presence: true, :uniqueness => true
end
