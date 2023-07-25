#!/usr/bin/node

const request = require('request');

request(process.argv[2], function (err, response, body) {
  if (err) {
    console.error('Error:', err.message);
    return;
  }

  const resp = {};
  const json = JSON.parse(body);
  for (let x = 0; x < json.length; x++) {
    if (json[x].completed === true) {
      if (resp[json[x].userId] === undefined) {
        resp[json[x].userId] = 0;
      }
      resp[json[x].userId]++;
    }
  }
  console.log(resp);
});
