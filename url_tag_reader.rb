require 'open-uri'

def just_fetch_page(url)
  URI.open(url).read
end

def just_count_tags(page, tag)
  pattern = /<#{tag}\b/
  tags = page.scan(pattern)
  tags.length
end

sites = ['http://www.wsj.com', 'http://www.nytimes.com', 'http://www.ft.com']

tags = %w[div h1 h2 h3 img p]

sites.each do |url|
  puts "#{url} has:"
  tags.each do |tag|
    page = just_fetch_page(url)
    tag_count = just_count_tags(page, tag)
    puts "\t - #{tag_count} <#{tag}> tags"
  end
end
