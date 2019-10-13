module ApplicationHelper
  def gravatar_for(user, options = {size:80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = 'https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}'
    image_tag(gravatar_url, alt: user.username, class:'img-circle')
  end
end

# https://s.gravatar.com/avatar/60bb888c5024730e8e0470d193c639cf?s=80
