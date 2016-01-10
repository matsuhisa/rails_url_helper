class Photo < ActiveRecord::Base
  enum state: { published: 1, draft: 2 }
end
