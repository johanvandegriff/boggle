# boggle

web app to play the boggle word game with friends

[play online](https://games.jjv.sh/boggle)

## Run It Yourself

```bash
mkdir -p ~/boggle-data/lists
```

Search online for the scrabble dictionary of words with definitions, and convert it to the following json formats in the following 2 files:

`~/boggle-data/lists/CollinsScrabbleWords2019.json`
```json
["aa", "aah", "aahed", "aahing", "aahs", ...
```

`~/boggle-data/lists/CollinsScrabbleWords2019WithDefinitions.json`
```json
{"aa": "(Hawaiian) a volcanic rock consisting of angular blocks of lava with a very rough surface [n -S]", "aah": "an interjection ...
```

```bash
docker run -p 8080:8080 -v ~/boggle-data/:/srv/ epjane/boggle:build1
```

Then visit [http://localhost:8080/](http://localhost:8080/) to play boggle.
