(* The Fibonacci function implemented in Standard ML *)

(* Straight-forward naïve implementation *)
fun fib 0 = 0
  | fib 1 = 1
  | fib n = fib (n-2) + fib (n-1);

(* Iterative implementation (more efficient; O(n)) *)
fun fib' n =
  let
    fun fib_it cur next i = if i = n then cur else fib_it next (cur+next) (i+1)
  in
    fib_it 0 1 0
  end
