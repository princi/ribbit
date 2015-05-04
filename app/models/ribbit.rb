class Ribbit < ActiveRecord::Base

  default_scope { order('external_created_at') }


    belongs_to :user

    validates :content, length: { maximum: 140 }

end
