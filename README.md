# Anagrams

Sinatra application to create anagrams from words.

Example

GET /tree

{"tree":["reet","teer"]}

GET /tree,none

{"tree":["reet","teer"],"none":["neon"]}

GET /tree,last's

{"tree":["reet","teer"],"last":["salt","slat"]}

Deployed on Heroku:

http://diowa-anagrams.herokuapp.com/tree
