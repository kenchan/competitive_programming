use proconio::input;

fn main() {
    input! {
        a: usize,
        b: usize
    }

    let ans = b as f64 / a as f64;

    println!("{:.3}", (ans * 1000.0).round() / 1000.0);
}
