/* eslint-disable @typescript-eslint/no-empty-function */
import { simpleBowling } from './bowlingScoreCalculator'

describe('Playing simple game ', () => {
  it('should return the score', () => {
    const input = '8-,7-,9-,3-,5-,1-,6-,5-,5-,5-'
    const output = 51
    const result = simpleBowling(input)
    expect(result).toEqual(output)
  })
})
