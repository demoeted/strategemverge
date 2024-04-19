=begin
  post_service.rb
=end
class PostService
  # Initializes PostService with an item an url
  #
  # @param item represents the name of the item, or PC Part.
  # @param url represents the url of the show page of the PC Part.
  def initialize(item, url)
    @item = item
    @url = url
  end

  # Returns a message in our discord server using the bot, notifying of a PC Part created with the name and show page URL.
  def call
    message = "A new PC Part '#{@item.name}' has been created!\n Follow this link to see: #{@url}"
    Bot.send_message(ChannelID, message)
  end
end
