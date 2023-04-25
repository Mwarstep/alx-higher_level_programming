#!/usr/bin/node

const request = require('request');
request(`https://swapi-api.alx-tools.com/api/films/${process.argv[2]}`, (error, response, body) => {
  if (error) {
    console.error(error);
    return;
  }
  const characters = JSON.parse(body).characters;
  characters.forEach((characterURL) => {
    request(characterURL, (error, response, body) => {
      if (error) {
        console.error(error);
        return;
      }
      console.log(JSON.parse(body).name);
    });
  });
});
