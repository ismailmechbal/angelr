# == Schema Information
#
# Table name: attachments
#
#  id                      :integer          not null, primary key
#  attachable_type         :string
#  attachable_id           :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  attachment_file_name    :string
#  attachment_content_type :string
#  attachment_file_size    :integer
#  attachment_updated_at   :datetime
#
# Indexes
#
#  index_attachments_on_attachable_id                      (attachable_id)
#  index_attachments_on_attachable_type_and_attachable_id  (attachable_type,attachable_id)
#

class Attachment < ApplicationRecord
  belongs_to :attachable, polymorphic: true
  has_attached_file :attachment
  validates_attachment_content_type :attachment, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]


end
