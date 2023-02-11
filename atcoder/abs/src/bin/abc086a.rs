use num::Integer;
use proconio::input;

fn main() {
    input! {
        a: u64,
        b: u64,
    }

    println!("{}", if (a * b).is_odd() { "Odd" } else { "Even"} )
}
