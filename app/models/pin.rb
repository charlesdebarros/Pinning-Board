# frozen_string_literal: true

# Pin model class
class Pin < ActiveRecord::Base
  has_attached_file :image, styles: { medium: '300x300>' }
  validates_attachment_content_type :image, content_type: %r{\Aimage/.*\Z}

  belongs_to :user

  acts_as_votable
end
