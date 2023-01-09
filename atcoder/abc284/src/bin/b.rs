use num::Integer;
use proconio::input;

fn main() {
    input! {
        t: usize,
    }

    let mut ans = vec![0; t];

    for i in ans.iter_mut() {
        input! {
            n: usize,
            a: [usize; n],
        }

        for j in a {
            if j.is_odd() {
                *i += 1;
            }
        }
    }

    for c in ans {
        println!("{}", c);
    }
}
