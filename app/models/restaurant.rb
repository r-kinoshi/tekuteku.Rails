# == Schema Information
#
# Table name: restaurants
#
#  id         :bigint           not null, primary key
#  comment    :text(65535)
#  image      :string(255)
#  name       :string(255)
#  url        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           default(0), not null
#
class Restaurant < ApplicationRecord
end
