use num::PrimInt;
use proconio::input;

fn main() {
    input! {
        s: String,
    }

    let mut ans = 0;

    for (i, c) in s.chars().rev().enumerate() {
        let n = (c as u8 - b'A' + 1) as usize;
        ans += n * 26.pow(i as u32)
    }

    println!("{}", ans);

}
