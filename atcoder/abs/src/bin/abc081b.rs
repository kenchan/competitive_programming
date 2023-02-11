use num::Integer;
use proconio::input;

fn main() {
    input! {
        n: usize,
        a: [usize; n],
    }

    let mut ans = 10_usize.pow(9);

    for mut i in a {
        let mut c = 0;
        while i.is_even() {
            i /= 2;
            c += 1;
        }
        if c < ans {
            ans = c
        }
    }

    println!("{}", ans);

}
