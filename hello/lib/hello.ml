let string_list_pp = [%show: string list]
let string_of_string_list = Format.asprintf "@[%a@]" string_list_pp
let world = String.split_on_char ' ' "Hello using an opam library"

let rec fact n = if n = 1 then 1 else n * fact (n -1)
let@test _ = fact 5 = 120
