# == Schema Information
#
# Table name: startups
#
#  id             :integer          not null, primary key
#  name           :string           default(""), not null
#  short_desc     :string           default(""), not null
#  long_desc      :text             default("")
#  website_url    :string           default("")
#  video_url      :string           default("")
#  note_founded   :string           default("")
#  note_team_size :string           default("")
#  note_stage     :string           default("")
#  note_traction  :string           default("")
#  is_active      :boolean          default(FALSE)
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_startups_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_7c23388490  (user_id => users.id)
#

class Startup < ApplicationRecord
  belongs_to :user
  has_many :decks
  has_many :galleries
  has_many :teams
  has_many :attachments, as: :attachable
end