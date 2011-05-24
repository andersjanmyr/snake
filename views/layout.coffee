doctype 5
html ->
  head ->
    meta charset: 'utf-8'

    title 'Snake'
    title "Snake: #{@title}" if @title?
    meta(name: 'description', content: @description) if @description?
    link(rel: 'canonical', href: @canonical) if @canonical?

    link rel: 'icon', href: '/favicon.ico'
    link rel: 'stylesheet', href: '/stylesheets/app.css'

    script src: 'http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js'
    script src: '/javascripts/app.js'

  body ->
    header ->
      nav ->
        ul ->
          for item in ['Home', 'About', 'Contact']
            li -> a href: "/#{item.toLowerCase()}", title: item, -> item

    div id: 'content', ->
      @body

    footer ->
      p -> a href: 'anders@janmyr.com', -> 'Anders Janmyr'

