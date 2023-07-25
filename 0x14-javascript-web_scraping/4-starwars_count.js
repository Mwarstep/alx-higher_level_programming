#!/usr/bin/node

const request = require('request');

const apiUrl = process.argv[2];
const characterId = 18;

request(apiUrl, function (error, response, body) {
  if (!error && response.statusCode === 200) {
    const movies = JSON.parse(body).results;
    let count = 0;
    for (const movie of movies) {
      const characters = movie.characters;
      for (const character of characters) {
        if (character.includes(characterId)) {
          count++;
          break;
        }
      }
    }
    console.log(count);
  } else {
    console.error(error);
  }
});
