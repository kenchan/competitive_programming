use proconio::input;

fn main() {
    input! {
        _n: usize,
        s: String,
    }

    let mut prev = 'z';

    for c in s.chars() {
        if prev == 'n' && c == 'a' {
            print!("ya");
        } else {
            print!("{}", c);
        }
        prev = c;
    }
}
