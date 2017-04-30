(*
      Multiples of 3 and 5
      Problem 1

      If we list all the natural numbers below 10 that are multiples of 3 or 5,
      we get 3, 5, 6 and 9. The sum of these multiples is 23.

      Find the sum of all the multiples of 3 or 5 below 1000.

      @Author:  Chris M. Perez
      @Date:    4/30/2017
*)



val sum = foldl op + 0

fun isMultiple(arg:int) =
   if(arg mod 3) = 0 orelse (arg mod 5) = 0 then arg else 0

fun exe() =
  sum(List.tabulate(1000, fn x => isMultiple x))

fun main() =
  print(Int.toString(exe()) ^ "\n")

val _ = main()
