Feature: Bowling game


    Scenario Outline: Playing a game of ten turns
        Given a "<result>" per turns
        When calculate the score
        Then return the <score>
        Examples:
            | result                        | score |
            | 8-,7-,9-,3-,5-,1-,6-,5-,5-,5- | 51    |
            | 82,71,9-,34,52,11,62,53,54,52 | 75    |


    @wip
    Scenario Outline: Playing a game of ten turns with a spare
        Given a "<result>" of game
        When calculate "<result>"
        Then return "<score>"
        Examples:
            | result                        | score |
            | 8/,22,--,--,--,--,--,--,--,-- | 12    |
            | 8/,22,--,--,44,--,5/,1-,--,-- | 36    |
            | 8/,22,--,--,44,--,5/,-1,--,-- | 35    |
    @wip
    Scenario Outline: Playing a game of ten turns with a strike
        Given a "<result>" of game
        When calculate "<result>"
        Then return "<score>"
        Examples:
            | result                       | score |
            | X,22,--,--,--,--,--,--,--,-- | 14    |
            | X,22,--,--,44,--,X,11,--,--  | 40    |
            | X,22,--,--,44,--,X,-1,1-,--  | 39    |




    @wip
    Scenario Outline: Playing a game of ten turns with a strike or a spare in the last turn
        Given a "<result>" of game
        When calculate "<result>"
        Then return "<score>"
        Examples:
            | result                         | score |
            | --,--,--,--,--,--,--,--,--,X11 | 12    |
            | --,--,--,--,--,--,--,--,--,5/1 | 11    |
            | 8-,7-,9-,3-,5-,1-,6-,5-,5-,X11 | 61    |
            | 8-,7-,9-,3-,5-,1-,6-,5-,5-,5/1 | 57    |