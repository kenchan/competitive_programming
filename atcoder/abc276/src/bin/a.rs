use proconio::input;

fn main() {
    input! {
        s: String,
    }

    for (i ,c) in s.chars().rev().enumerate() {
        if c == 'a' {
            println!("{}", s.len() - i);
            return;
        }
    }

    println!("-1");
}
