[![Code Climate](https://codeclimate.com/github/leggsimon/object-calisthenics-beach-volleyball-edition/badges/gpa.svg)](https://codeclimate.com/github/leggsimon/object-calisthenics-beach-volleyball-edition)

[![Test Coverage](https://codeclimate.com/github/leggsimon/object-calisthenics-beach-volleyball-edition/badges/coverage.svg)](https://codeclimate.com/github/leggsimon/object-calisthenics-beach-volleyball-edition/coverage)


# Object Calisthenics: Beach Volleyball Edition
<img src=https://www.hwhc.co.uk/wp-content/uploads/2015/07/21_cover_image_small_BigBeachVolleyball.jpg width="300"></img>
> "I love beach volleyball"  
  >\- Uncle Bob    

> *Calisthenics*   
  gymnastic exercises to achieve bodily fitness and grace of movement.

Welcome to *Object Calisthenics*, beach volleyball edition. This session is about modeling the domain of a beach volleyball league while adhering to strict OOP practices. Check out [this](http://williamdurand.fr/2013/06/03/object-calisthenics/#tl-dr) discussion for a lengthy explanation but focus on the following:  

1. Only One Level Of Indentation Per Method
2. Don't Use The ELSE Keyword
3. First Class Collections
4. One Dot Per Line
5. Don't Abbreviate
6. Keep All Classes Small
7. No Classes With More Than Two Instance Variables
8. Don't directly expose internal state (preserve encapsulation).

You may use any language or testing framework you like.

# Specification
= 1 =
> In order to play with more people    
> As a captain    
> I want to create a team    

Acceptance criteria:

- Mixed 6 a side volleyball, so the size of team should be minimum 7 and maximum 10.
- Mixed League Requirement – Min of 2 men or women on the field at all time. That means than when creating a team at least 2 men or women should be included.
- A player can be part of only one team in the league.

***************************
= 2 =
> In order to play in a match    
> As a player    
> I want to confirm my availability    

Acceptance criteria:
- A player can't join in a match, if she has been suspended. The suspension can be from 1 to 3 games.

***************************
= 3 =
> In order to create a more flexible team    
> As a captain    
> I want to register a 'ringer' in my team    

Acceptance criteria:

- Maximum 5 ringers on pool.
- A ringer can play 3 matches with the team. Once he is in that situation, he is discarded and there will be another spot for another ringer.
- A ringer can be part of only one team in the league.

***************************
= 4 =
> In order to play against another team    
> As a captain    
> I want to check that my team is ready    

Acceptance criteria:
- Minimum 5 players available, including at least 2 Ladies or Men.
- Ringers can be used in order to field a full team, but only 2 per match.
