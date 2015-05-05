class Ribbit < ActiveRecord::Base

  default_scope { order('created_at') }


    belongs_to :user

    validates :content, length: { maximum: 140 }

end
