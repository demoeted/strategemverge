class PostService
  def initialize(item, url)
    @item = item
    @url = url
  end

  def call
    message = "A new PC Part '#{@item.name}' has been created!\n Follow this link to see: #{@url}"
    Bot.send_message(ChannelID, message)
  end
end
