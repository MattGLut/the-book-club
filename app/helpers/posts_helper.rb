module PostsHelper
  def render_markdown(text)
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
    markdown = Redcarpet::Markdown.new(renderer, autolink: true, fenced_code_blocks: true)
    sanitize(markdown.render(text))
  end

  def post_excerpt(post, length: 200)
    post.body.to_s.gsub(/\s+/, " ").strip.truncate(length)
  end
end
