class Movie < ApplicationRecord
       
 belongs_to :user, optional: true
 has_many :favorites, dependent: :destroy
 
 with_options presence: true do
     validates :datetime
     validates :place
     validates :video_id
     validates :name
     validates :self_comment
     
 end
end
