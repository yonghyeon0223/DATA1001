from newspaper import Article

url = 'https://en.wikipedia.org/wiki/Son_Heung-min'
article = Article(url)
article.download()

text = article.text

print(text)
