use proconio::input;

fn main() {
    input! {
        n: usize,
        s: [String; n],
    }

    for str in s.into_iter().rev() {
        println!("{}", str);
    }

}
