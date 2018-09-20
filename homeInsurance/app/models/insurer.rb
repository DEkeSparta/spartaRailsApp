class Insurer < ApplicationRecord
  has_many :users

  def total
    t = 0
    self.users.each do |user|
      user.items.each do |item|
        t += item.value
      end
    end
    t
  end
end
