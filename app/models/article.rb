class Article < ActiveRecord::Base
belongs_to :owner, inverse_of: :articles
end
