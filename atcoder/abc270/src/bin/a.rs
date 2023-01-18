use std::collections::HashSet;

use proconio::input;

fn main() {
    input! {
        mut a: usize,
        mut b: usize,
    }

    let mut ans = HashSet::new();

    if a >= 4 {
        a -= 4;
        ans.insert(4);
    }

    if b >= 4 {
        b -= 4;
        ans.insert(4);
    }

    if a >= 2 {
        a -= 2;
        ans.insert(2);
    }

    if b >= 2 {
        b -= 2;
        ans.insert(2);
    }

    if a >= 1 {
        a -= 1;
        ans.insert(1);
    }

    if b >= 1 {
        b -= 1;
        ans.insert(1);
    }


    println!("{}", ans.iter().sum::<usize>());
}
