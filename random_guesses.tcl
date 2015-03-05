#!/usr/bin/tclsh
source ./random.tcl

proc random_guesser {integer} {
    set guess [random 6]
    set guesses 1
    puts "$guesses: $guess"
    while {$guess != $integer} {
        incr guesses
        set guess [random 6]
        puts "$guesses: $guess"
    }
    return $guesses
}

puts "I got there in [random_guesser 4] guesses"
