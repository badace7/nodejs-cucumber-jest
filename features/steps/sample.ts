/* eslint-disable prettier/prettier */
import { When, Then, Given } from 'cucumber'
import { expect } from 'chai'
import { simpleBowling } from '../../src/bowlingScoreCalculator'

When('I want to log {string}', function (log: string) {
  this.log = log
})

Then('the response equals {string}', function (log: string) {
  expect(log).to.equals(this.log)
})

Given('a {string} per turns', function (results) {
  this.gameResults = results;
})

When('calculate the score', function () {
  this.score = simpleBowling(this.gameResults);
})

Then('return the {int}', function (gameScore) {
  console.log('calculated score', this.score)
  console.log('given score', gameScore)
  expect(this.score).to.equals(gameScore);
})
