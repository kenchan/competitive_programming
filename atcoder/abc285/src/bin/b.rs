use std::collections::HashMap;

use proconio::input;

fn main() {
    input! {
        n: usize,
        s: String,
    }

    let mut h: HashMap<usize,char> = HashMap::new();

    for (i, c ) in s.chars().enumerate() {
        h.insert(i, c);
    }

    for i in 1..n {
        let mut ans = 0;
        for l in 0..n {
            if l + i >= n {
                break;
            }

            if h.get(&l) == h.get(&(l + i)) {
                break;
            }
            ans = l + 1;
        }

        println!("{}", ans);
    }
}
