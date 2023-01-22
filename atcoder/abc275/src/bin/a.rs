use proconio::input;

fn main() {
    input! {
        n: usize,
        h: [usize; n],
    }

    let max = h.iter().max().unwrap();

    for i in 0..n {
        if *max == h[i] {
            println!("{}", i + 1);
            return;
        }
    }
}
