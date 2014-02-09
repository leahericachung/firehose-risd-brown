class Pic < ActiveRecord::Base

  mount_uploader :image, PicUploader

end

