import Html exposing (text)
import List exposing (filter, map)

add : Int -> Int -> Int
add x y =
  x + y

numbers =
  [1..100]

isOdd : Int -> Bool
isOdd x =
  rem x 2 == 1

divisibleBy : Int -> Int -> Bool
divisibleBy diviser value =
  rem value diviser == 0

result =
  numbers
  |> filter isOdd
  |> filter (divisibleBy 5)

indexOf : a -> List a -> Int
indexOf needle haystack =
  4

myMap : (a -> b) -> List a -> List b
myMap func list =
  map func list

main =
  text(toString (myMap isOdd [1..10]))
