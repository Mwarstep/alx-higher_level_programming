#!/usr/bin/node

const request = require('request');

const url = 'https://jsonplaceholder.typicode.com/todos';
const completedTasksByUser = {};

request(url, (error, response, body) => {
  if (error) {
    console.error(error);
    return;
  }

  const tasks = JSON.parse(body);

  tasks.forEach(task => {
    if (task.completed) {
      completedTasksByUser[task.userId] = (completedTasksByUser[task.userId] || 0) + 1;
    }
  });

  Object.keys(completedTasksByUser).forEach(userId => {
    console.log(`${userId}: ${completedTasksByUser[userId]}`);
  });
});
