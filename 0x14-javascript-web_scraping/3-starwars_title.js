#!/usr/bin/node

const request = require('request');

// Defines the movie ID
const movieId = process.argv[2];

// Make the GET request to the Star Wars API
request(`https://swapi-api.alx-tools.com/api/films/${movieId}`, (error, response, body) => {
  if (error) {
    console.error(error);
    return;
  }

  // Parses the JSON response
  const data = JSON.parse(body);

  console.log(data.title);
});
