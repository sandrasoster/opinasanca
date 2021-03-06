module Imageable
  extend ActiveSupport::Concern

  included do
    has_one :image, as: :imageable, dependent: :destroy
    accepts_nested_attributes_for :image, allow_destroy: true, update_only: true

    def image_url(style)
      image.attachment.url(style) if image && image.attachment.exists?
    end
  end
end
