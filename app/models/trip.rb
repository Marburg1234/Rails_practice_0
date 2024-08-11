class Trip < ApplicationRecord


  belongs_to :user

  has_one_attached :image



#投稿された写真の表示動作→なければ no_imageの画像を表示する
  def get_image
    if image.attached?
      image
    else
      'no_image.png'
    end
  end

end
