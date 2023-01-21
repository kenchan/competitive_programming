use std::collections::VecDeque;

use proconio::input;

fn main() {
    input! {
        n: usize,
        a: usize,
        b: usize,
        s: String,
    }

    let mut chars = VecDeque::new();

    for c in s.chars() {
        chars.push_back(c);
    }

    let mut ans = std::u128::MAX;

    for i in 0..n {
        let mut cost: u128 = (i * a) as u128;

        let mut low = 0;
        let mut high = chars.len() - 1;

        while low < high {
            if chars[low] != chars[high] {
                cost += b as u128;
            }
            low += 1;
            high -= 1;
        }

        if cost < ans {
            ans = cost;
        }

        let first_char = &chars.pop_front().unwrap();
        chars.push_back(*first_char);

    }

    println!("{}", ans);

}
