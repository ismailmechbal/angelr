# == Schema Information
#
# Table name: decks
#
#  id         :integer          not null, primary key
#  startup_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_decks_on_startup_id  (startup_id)
#
# Foreign Keys
#
#  fk_rails_9b2077c0e6  (startup_id => startups.id)
#

class Deck < ApplicationRecord
  belongs_to :startup
  has_many :attachments, as: :attachable
end
