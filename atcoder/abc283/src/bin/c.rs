use proconio::input;

fn main() {
    input! {
        s: String,
    }

    let mut prev = '9';
    let mut ans = 0;

    for c in s.chars() {
        if c == '0' && prev == '0' {
            prev = '9';
            continue;
        }
        ans += 1;
        prev = c;
    }

    println!("{}", ans);
}
