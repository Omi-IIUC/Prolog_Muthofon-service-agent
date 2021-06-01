go:- grasp(Make),
write('your '),
write(Make),
write(' Order is ready'),
nl,
undo.

input(Question) :-
write('Would you want a '),
write(Question),
write('? '),
read(Output),
nl,
((Output == yes ; Output == y)
->
assert(yes(Question)) ;
assert(no(Question)), fail).

:- dynamic yes/1,no/1.

verify(Order) :-
(yes(Order)
 ->
  true ;
   (no(Order)
	 ->
	  fail ;
		input(Order))).
		
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.

/*----- Hypothesis -----*/
grasp(samsung) :- samsung, !.
grasp(iphone) :- iphone, !.
grasp(oneplus) :- oneplus, !.
grasp(xiaomi) :- xiaomi, !.
grasp(empty_basket).


/*--------- Samsung ----------*/
samsung :-
verify(mobile),
verify(samsung),
verify(black_color),
verify(rom_64).

samsung :-
verify(mobile),
verify(samsung),
verify(black_color),
verify(rom_128).

samsung :-
verify(mobile),
verify(samsung),
verify(grey_color),
verify(rom_64).

samsung :-
verify(mobile),
verify(samsung),
verify(grey_color),
verify(rom_128).

/*---------- iphone -----------*/
iphone :-
verify(mobile),
verify(iphone),
verify(white_color),
verify(rom_64).

iphone :-
verify(mobile),
verify(iphone),
verify(white_color),
verify(rom_128).

iphone :-
verify(mobile),
verify(iphone),
verify(pink_color),
verify(rom_64).

iphone :-
verify(mobile),
verify(iphone),
verify(pink_color),
verify(rom_128).

/*----------- oneplus ----------*/
oneplus :-
verify(mobile),
verify(oneplus),
verify(white_color),
verify(rom_64).

oneplus :-
verify(mobile),
verify(oneplus),
verify(white_color),
verify(rom_128).

oneplus :-
verify(mobile),
verify(oneplus),
verify(black_color),
verify(rom_64).

oneplus :-
verify(mobile),
verify(oneplus),
verify(black_color),
verify(rom_128).


/*----------- xiaomi ----------*/
xiaomi :-
verify(mobile),
verify(xiaomi),
verify(silver_color),
verify(rom_64).

xiaomi :-
verify(mobile),
verify(xiaomi),
verify(silver_color),
verify(rom_128)

xiaomi :-
verify(mobile),
verify(xiaomi),
verify(black_color),
verify(rom_64).

xiaomi :-
verify(mobile),
verify(xiaomi),
verify(black_color),
verify(rom_128).