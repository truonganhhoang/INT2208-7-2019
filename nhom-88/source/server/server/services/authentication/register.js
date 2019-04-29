'use strict';
const express = require('express');
const User = require('../../models/User');
const httpMessages = {
  onValidationError: {
    success: false,
    message: 'Please enter email and password.'
  },
  onUserSaveError: {
    success: false,
    message: 'That email address already exists.'
  },
  onUserSaveSuccess: {
    success: true,
    message: 'Successfully created new user.'
  }
}
// Register new users
function registerUser(request, response) {
  let { email, password } = request.body;
  if (!email || !password) {
    console.log(request.body);
    response.json(httpMessages.onValidationError);
  } else {
    let newUser = new User({
      email: email,
      password: password
    });
    // Attempt to save the user
    newUser.save(error => {
      if (error) {
        return response.json(httpMessages.onUserSaveError);
      }
      response.json(httpMessages.onUserSaveSuccess);
    });
  }
}
module.exports = {
  registerUser: registerUser
};