class Photo < ActiveRecord::Base
    belongs_to :user
    belongs_to :place
    
    validates :caption,  length: { minimum: 3 }
    validates :picture, :presence => true
    mount_uploader :picture, PictureUploader
end
