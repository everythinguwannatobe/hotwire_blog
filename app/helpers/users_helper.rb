module UsersHelper
  def avatar_path(user, options = {})
    size = options[:size] || 32

    hash = Digest::MD5.hexdigest(user.email.downcase)
    "https://secure.gravatar.com/avatar/#{hash}.png?s=#{size}"
  end
end
