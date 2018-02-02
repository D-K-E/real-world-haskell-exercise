--
create_new_list :: [element] -> Int -> element

create_new_list some_list number =
  head (drop number some_list)

substr :: Int -> Int -> Int

substr a_number b_number = a_number - b_number

lastButOne :: [element] -> Int -> element

lastButOne a_list number=
  if number < 2 || number == 0
  then a_list !! 3
  else create_new_list a_list (substr number  2)

