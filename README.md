# Spot Management Backend

## Features

- Add new spot with title, description, list of images, and price
- Edit spot title, description, list of images, and price
- List of spots
- Add reviews to a specific spot
- Edit reviews to a specific spot
- Sort by price

## Stack

Ruby 2.7.7
Rails 7.0.4.2
Postgresql 14

## Install

- gem install bundler
- bundle install
- rake db:migrate
- rails s

## DB Schema

### Spots

- Title
- Description
- Price

### Reviews

- Review
- Spot_id