
likes(john,winny).
likes(john,angela).
likes(john,nikole).
likes(john,angelina).
likes(angela,food).
likes(angela,wine).
likes(peter,food).

% John likes X if X likes wine and likes food.
likes(john,X) :- likes(X,wine), likes(X,food).