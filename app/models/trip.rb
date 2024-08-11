class Trip < ApplicationRecord


  belongs_to :user

  # 一枚の画像を投稿できるようにする
  has_one_attached :image

  # 複数の画像を投稿できるように試してみる
  # has_many_attached :images



#投稿された写真の表示動作→なければ no_imageの画像を表示する
  def get_image
    if image.attached?
      image
    else
      'no_image.png'
    end
  end

end
