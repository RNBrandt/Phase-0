#RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]
# [1,2] array index [0]
#[inner, (+)] is array index [1]
#[eagle, par, (+)] is array index [1][0] = :inner [0]
#["FORE,"hook"] is array index [1][1]
#"FORE" is array index [1][1][0]
#"hook" is array index [1][1][1]
# attempts: 3
# ============================================================
#p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

#hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
#p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

#nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
#p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array= number_array.flatten.map!{
  |number|  number += 5
}

#


# Bonus:
=begin
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

=end