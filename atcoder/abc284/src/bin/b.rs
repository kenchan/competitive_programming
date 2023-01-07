use num::Integer;
use proconio::input;

fn main() {
    input! {
        t: usize,
    }

    let mut ans = vec![0; t];

    for i in 0..t {
        input! {
            n: usize,
            a: [usize; n],
        }

        for j in a {
            if j.is_odd() {
                ans[i] += 1;
            }a
        }
    }

    for c in ans {
        println!("{}", c);
    }
}
