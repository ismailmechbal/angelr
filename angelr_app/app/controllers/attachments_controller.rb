class AttachmentsController < ApplicationController
  before_action :load_attachable

  def index
    @attachments = @attachable.attachments
  end

private

  def load_attachable
    resource, id = request.path.split('/')[1,2]
    @attachable = resource.singularize.classify.constantize.find(id)
  end
end