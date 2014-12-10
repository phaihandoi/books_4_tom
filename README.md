### Run MongoDB
Just click to [Start] button in MongoDB tab
If MongoDB cannot start, let's remove `mongod.lock` and click [Start] again
```sh
rm ~/data/mongod.lock
```

### Run RailsServer | DelayedJob | Download LOG
Click to [Start] button of each tab

### Start Crawling from scratch
Make sure MongoDB and DelayedJob had been started.

```sh
rake db:drop
rake crawler:fetch_urls:category
rake crawler:fetch_urls:book
rake crawler:scrap_content
```

### Visit website
- Make sure RailsServer had been started
- Visit https://books-4-tom-phaihandoi.c9.io