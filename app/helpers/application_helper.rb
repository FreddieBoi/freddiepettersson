module ApplicationHelper
  include TweetButton
  
  def app_title
    "freddiepettersson"
  end
  
  # Set the page title
  def title(page_title)
    content_for(:title) { page_title }
  end

  # Get a facebook like button
  def facebook_like_button
    src = "http://www.facebook.com/plugins/like.php?href=#{CGI::escape(request.url)}&layout=standard&show_faces=true&width=450&action=like&font=arial&colorscheme=light&height=80"
    content_tag :iframe, nil, :src => src, :scrolling => 'no', :frameborder => '0',
    :allowtransparency => true, :id => :facebook_like
  end

  TweetButton.default_tweet_button_options = {:via => "punkrawkR87", :count => "horizontal"}

end
