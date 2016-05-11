class FeaturedImage < ActiveRecord::Base
  belongs_to :post, touch: true
end
