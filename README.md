# rosette-123-jeremy3
rosette-123-jeremy3 created by GitHub Classroom

* Started by installing racket and setting up rosette. Setup was fairly smooth.
* Read through Rosette docs. Read through the functions Alex mentioned in class (sat?, unsat?, model, etc.). These were very helpful as I was a bit confused at first since I started by reading the solve function documentation.

* Worked on problem 1 of homework 1, in classify.rkt. Refreshed myself on Racket (hash tables, and unit tests). Wrote the classify function along with some unit tests.

* Started work on problem 2. Found out CNF means Conjunctive Normal Form. Read Wikipedia articles on CNF and Tseytin transformation.

* Use the tseytin process I found on Wikipedia to apply it to the given sample problem (see tseitin.txt) and it seemed to work pretty well. The whole formula reduced to just !q & !p which is a huge improvement for solving satisfiability problems.

* Started working on proof of monotonicity for NNF formulas. This took a while since I had to dust a lot of cobwebs off of my inductive proof methods. I did some research on Wikipedia on NNF formulas, and attempted the proof several times. First I started with a simple direct proof which was unsuccessful (had too many logical gaps and statements that I wasn't sure were airtight). Then I switched to induction, but realized I needed better definitions. As per the hint and the wikipedia for structural induction, I wrote better definitions using a Haskell-like syntax. 

* Then I wrote another proof attempt. I was initially convinced it was a proof, but then realized I assumed a fixed I' in some cases meaning it was not generalizable. So I tried again, using a single literal formula as the base case, and added two induction steps (one for the OR case and one for the AND case) to prove the implication. I feel pretty good about the proof as of now, but there are still a few spots that may be a little too vague because I have never done advanced set theory proofs. All in all this was my favorite problem of this homework because I really like proofs, but haven't had much experience with them outside of Math 248.
