# == Schema Information
#
# Table name: galleries
#
#  id         :integer          not null, primary key
#  startup_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_galleries_on_startup_id  (startup_id)
#
# Foreign Keys
#
#  fk_rails_21fa0cf019  (startup_id => startups.id)
#

class Gallery < ApplicationRecord
  belongs_to :startup
  has_many :attachments, as: :attachable
end
