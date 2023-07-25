#!/usr/bin/node

const request = require('request');
const movieID = process.argv[2];

request(`https://swapi-api.alx-tools.com/api/films/${movieID}`, (error, response, body) => {
  if (error) {
    console.error(error);
    return;
  }
  const movie = JSON.parse(body);
  const characters = movie.characters;

  characters.forEach((character) => {
    request(character, (error, response, body) => {
      if (error) {
        console.error(error);
        return;
      }
      const char = JSON.parse(body);
      console.log(char.name);
    });
  });
});

