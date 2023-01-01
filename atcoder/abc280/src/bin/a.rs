use proconio::{input, marker::Chars};

fn main() {
    input! {
        h: i32,
        _w: i32,
        s: [Chars; h]
    }

    let mut ans = 0;

    for string in s {
        for c in string {
            if c == '#' {
                ans += 1;
            }
        }
    }

    println!("{}", ans);
}
