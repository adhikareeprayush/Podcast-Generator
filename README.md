# PODCAST FEED GENERATOR

A Github action to generate a podcast feed from a YAML fille. YAML is much easier to read and write than XML, and this action will convert your YAML file into a valid podcast feed.

###Usage

#####Turn on Github Pages
In your repository, go to Settings> Pages and select the main branch as the source. This will create a link to your page and gice all of the content in the main brbanch a URL. Note the URL for the next step.

#####Create a YAML File
Create a YAML file in your repository with the following format
```
title: <Podcast Title>
subtitle: <Podcast Subtitle>
author: <Author Name>
description: <Podcast Description>
link: <Github Pages URL>
image: <Artwork Location>
language: <Podcast Language e.g. en-us>
category: <Podcast Category e.g. Technology>
format: <format of files e.g. audio/mpeg>
item:
  - title: <Podcast Episode Title>
    description: <Podcast Episode Description>
    published: <Date Published - e.g. Thu, 12 Jan 2023 18:00:00 GMT>
    file: <Filename e.g. /audip/TFIT01.mp3>
    duration: <duration e.g. 00:00:36>
    length: <length e.g. 576,324 (Get Info on your files)>
....Repeat for each episode
```

#####Sample Workflow
You're also going to need your own workflow file. Here's a sample:
```
name: Generate Feed
on: [push]
jobs:
  generate-feed:
      runs-on: ubuntu-latest
      steps:
        - name: Checkout Repo
          uses: actions/checkout@v3
        - name: Run Feed Generator
          uses: planetotheweb/podcast-feed-generator@main
```
