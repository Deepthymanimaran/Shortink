class Url < ApplicationRecord
  belongs_to :user

  def generate_short_url
    rand(30**8).to_s(30)
  end

  def sanitize
    long_url.strip!
    sanitize_url = self.long_url.downcase.substring(/(https?:\/\/)|(www\.)/,"")
    "http://#{sanitize_url}"
  end

end
