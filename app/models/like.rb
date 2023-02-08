class Like < ApplicationRecord
  belongs_to :user, optional: true # because we have not considered the user figure for the test
  belongs_to :post, counter_cache: true
end