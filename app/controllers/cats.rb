get "/cats" do
  cat_images = JSON.parse(open('https://reddit.com/r/cats/top/.json').read)

  urls = []
  count = 0
  until count == 25
    urls << cat_images['data']['children'][count]['data']['preview']['images'][0]['source']['url']
    count += 1
  end

  urls.map do |url|
    Image.create(imageUrl: url)
  end

  @cats = Image.all

  erb :"index"
end
