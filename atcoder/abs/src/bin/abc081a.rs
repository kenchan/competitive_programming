use proconio::input;

fn main() {
    input! {
        s: String,
    }

    println!("{}", s.chars().into_iter().filter(|c| *c == '1').count());
}
