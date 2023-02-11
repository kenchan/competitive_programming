use proconio::input;

fn main() {
    input! {
        a: usize,
        b: usize,
        c: usize,
        s: String,
    }

    println!("{} {}", a + b + c, s);
}
