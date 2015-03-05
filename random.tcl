#!/usr/bin/tclsh

proc random {range} {
    return [expr {int(rand()*$range)}]
}

proc random_min_max {minimum maximum} {
    set range [expr $maximum - $minimum + 1]
    set number [random $range]
    return [expr $number + $minimum]
}
