//
// Quiz time again! Let's see if you can solve the famous "Fizz Buzz"!
//
//     "Players take turns to count incrementally, replacing
//      any number divisible by three with the word "fizz",
//      and any number divisible by five with the word "buzz".
//          - From https://en.wikipedia.org/wiki/Fizz_buzz
//
// Let's go from 1 to 16. This has been started for you, but there
// are some problems. :-(
//

const std = @import("std");

const print = std.debug.print;

pub fn main() void {
    var n: u8 = 1;
    while (n <= 16) : (n += 1) {
        if (n % 3 == 0) print("Fizz", .{});
        if (n % 5 == 0) print("Buzz", .{});
        if (!(n % 3 == 0 or n % 5 == 0)) print("{}", .{n});
        print(", ", .{});
    }
    std.debug.print("\n", .{});
}
