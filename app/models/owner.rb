class Owner < ActiveRecord::Base
has_many :articles, inverse_of: :owner
end
