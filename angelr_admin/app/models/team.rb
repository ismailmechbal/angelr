# == Schema Information
#
# Table name: teams
#
#  id           :integer          not null, primary key
#  name         :string
#  role         :string
#  facebook_url :string
#  twitter_url  :string
#  linkedin_url :string
#  startup_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_teams_on_startup_id  (startup_id)
#
# Foreign Keys
#
#  fk_rails_923b0565b5  (startup_id => startups.id)
#

class Team < ApplicationRecord
  belongs_to :startup
  has_many :attachments, as: :attachable
end