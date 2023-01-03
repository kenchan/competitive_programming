use proconio::input;

fn main() {
    input! {
        s: String
    }

    let mut ans = 0;

    for c in s.chars() {
        match c {
            'v' => ans += 1,
            'w' => ans += 2,
            _ => {},
        }
    }

    println!("{}", ans)
}
