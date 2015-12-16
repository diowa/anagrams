# Anagrams

Sinatra application to create anagrams of words.

Example

GET /tree
{"tree":["reet","teer"]}

GET /tree,none
{"tree":["reet","teer"],"none":["neon"]}

GET /tree,last's
{"tree":["reet","reet","teer"],"last":["salt","slat"]}
