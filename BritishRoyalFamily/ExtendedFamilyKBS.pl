% ---- Generation 1 ----

gender(william_seni, male).
age(william_seni, 95).
height(william_seni, 178).

gender(elizabeth, female).
age(elizabeth, 93).
height(elizabeth, 163).

married(william_seni, elizabeth).

% ---- Generation 2 ----

gender(charles, male).
age(charles, 74).
height(charles, 178).

gender(diana, female).
age(diana, 36).
height(diana, 178).

father(william_seni, charles).
mother(elizabeth, charles).
married(charles, diana).

gender(anne, female).
age(anne, 72).
height(anne, 170).

gender(timothy, male).
age(timothy, 75).
height(timothy, 181).

father(william_seni, anne).
mother(elizabeth, anne).
married(anne, timothy).

% ---- Generation 3 ----

gender(william_jr, male).
age(william_jr, 40).
height(william_jr, 191).

gender(catherine, female).
age(catherine, 39).
height(catherine, 170).

father(charles, william_jr).
mother(diana, william_jr).
married(william_jr, catherine).

gender(harry, male).
age(harry, 38).
height(harry, 186).

gender(meghan, female).
age(meghan, 41).
height(meghan, 171).

father(charles, harry).
mother(diana, harry).
married(harry, meghan).

gender(peter, male).
age(peter, 45).
height(peter, 182).

gender(autumn, female).
age(autumn, 43).
height(autumn, 168).

father(timothy, peter).
mother(anne, peter).
married(peter, autumn).

gender(zara, female).
age(zara, 43).
height(zara, 175).

gender(mike, male).
age(mike, 44).
height(mike, 188).

father(timothy, zara).
mother(anne, zara).
married(zara, mike).

% ---- Generation 4 ----

% William Jr & Catherine children

gender(george, male).
age(george, 10).
height(george, 140).
father(william_jr, george).
mother(catherine, george).

gender(charlotte, female).
age(charlotte, 8).
height(charlotte, 130).
father(william_jr, charlotte).
mother(catherine, charlotte).

gender(louis, male).
age(louis, 6).
height(louis, 120).
father(william_jr, louis).
mother(catherine, louis).

% Harry & Meghan children

gender(archie, male).
age(archie, 4).
height(archie, 110).
father(harry, archie).
mother(meghan, archie).

gender(lilibet, female).
age(lilibet, 2).
height(lilibet, 90).
father(harry, lilibet).
mother(meghan, lilibet).

% Peter & Autumn

gender(savannah, female).
age(savannah, 12).
height(savannah, 150).
father(peter, savannah).
mother(autumn, savannah).

gender(isla, female).
age(isla, 10).
height(isla, 145).
father(peter, isla).
mother(autumn, isla).

% Zara & Mike

gender(mia, female).
age(mia, 9).
height(mia, 135).
father(mike, mia).
mother(zara, mia).

gender(lena, female).
age(lena, 6).
height(lena, 120).
father(mike, lena).
mother(zara, lena).

gender(lucas, male).
age(lucas, 2).
height(lucas, 95).
father(mike, lucas).
mother(zara, lucas).

% relationships

parent(P, C) :- father(P, C).
parent(P, C) :- mother(P, C).

sibling(A, B) :-
    parent(P, A),
    parent(P, B),
    A \= B.

brother(A, B) :-
    sibling(A, B),
    gender(A, male).

sister(A, B) :-
    sibling(A, B),
    gender(A, female).

husband(H, W) :-
    married(H, W),
    gender(H, male).

wife(W, H) :-
    married(W, H),
    gender(W, female).

grandparent(G, C) :-
    parent(G, P),
    parent(P, C).

older_than(X, Y) :-
    age(X, AX),
    age(Y, AY),
    AX > AY.

taller_than(X, Y) :-
    height(X, HX),
    height(Y, HY),
    HX > HY.

% Query: find people older than 20 and taller than 180cm

qualified(Person) :-
    age(Person, Age), Age > 20,
    height(Person, H), H > 180.


