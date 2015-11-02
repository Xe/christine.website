import Widget from require "lapis.html"

class RSSFeed extends Widget
  content: =>
    raw [[<?xml version="1.0" encoding="UTF-8" ?>]]
    rss version: "2.0"

    channel ->
      title "Christine Dodrill's Blog"
      link "https://christine.website/blog"
      description "My blog posts and rants about various technology things."

      for _, post in pairs @posts
        item ->
          title post.title
          link "https://christine.website/blog/" .. post.slug
          description post.md
          pubDate post.date
