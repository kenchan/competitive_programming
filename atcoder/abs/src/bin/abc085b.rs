use itertools::Itertools;
use proconio::input;

fn main() {
    input! {
        n: usize,
        mut d: [usize; n],
    }

    println!("{}", d.iter().unique().count());
}
