module ApplicationHelper
  def default_meta_tags
    {
      site: Settings.system[:title],
      title: Settings.system[:title],
      reverse: true,
      charset: 'utf-8',
      description: Settings.system[:description],
      keywords: ['Twitter', 'イベント管理', 'イマココ'],
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('logo.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' },
      ],
      og: {
        site_name: Settings.system[:title],
        title: Settings.system[:title],
        description: Settings.system[:description],
        type: 'website',
        url: request.original_url,
        image: image_url('eyecatch.jpg'),
        locale: 'ja_JP',
      },
      twitter: {
        card: ENV['TWITTER_CARD_TYPE'],
        site: "@#{Settings.system[:twitter_site]}",
      }
    }
  end

  # Twitterのトップページへのリンク
  def twitter_user_link(name, id)
    user_name = name || Settings.system[:default][:user_name]
    user_id = id
    if user_id.present?
      link_to user_name, "#{Settings.system[:twitter][:url]}#{user_id}", target: "_blank"
    else
      user_name
    end
  end
  
  # Twitter投稿へのリンク
  def twitter_post_link(obj, url = Settings.system[:url])
    title = obj.title.presence || Settings.system[:title]
    description = obj.description.presence || Settings.system[:description]
    msg = "「#{title}」%0a" + "#{description}%0a＃" + "#{Settings.system[:hashtag]}%0a"
    msg = "#{msg}@#{ENV['TWITTER_MENTION_ID']}" if ENV['TWITTER_MENTION_ID'].present?
    link_to (fa_icon :twitter) + "Twitterに投稿", Settings.system[:twitter][:share_url] + "url=#{url}&text=#{msg}", {class: "btn btn-social btn-twitter", target: "_blank"}
  end

  # Twitter投稿へのリンク
  def twitter_post_msg(msg = "", label = "Twitterに投稿", url = Settings.system[:url])
    msg = "#{msg}%0a＃" + "#{Settings.system[:hashtag]}%0a"
    msg = "#{msg}@#{ENV['TWITTER_MENTION_ID']}" if ENV['TWITTER_MENTION_ID'].present?
    link_to (fa_icon :twitter) + label, Settings.system[:twitter][:share_url] + "url=#{url}&text=#{msg}", {class: "btn btn-social btn-twitter", target: "_blank"}
  end
  
  def render_any(partials, options = {})
    partial = partials.find do |partial|
      prefix = partial.include?("/") ? "" : controller._prefixes
      lookup_context.exists?(partial, prefix,  true)
    end
  
    render partial, options
  end

  # スコアの星マーク
  def start_mark(score)
    icon("fas", "star") * score
  end

end
