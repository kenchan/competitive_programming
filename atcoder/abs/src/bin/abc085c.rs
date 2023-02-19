use proconio::input;

fn main() {
    input! {
        n: usize,
        y: usize,
    }

    for i in 0..=n {
        for j in 0..=(n - i) {
            if i * 10000 + j * 5000 + (n - i - j) * 1000 == y {
                println!("{} {} {}", i, j, n - i - j);
                return;
            }
        }
    }

    println!("-1 -1 -1");
}
