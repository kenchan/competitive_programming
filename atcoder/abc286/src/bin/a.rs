use proconio::input;

fn main() {
    input! {
        n: usize,
        p: usize,
        q: usize,
        r: usize,
        s: usize,
        a: [usize; n],
    }

    for i in 0..n {

        if p - 1 <= i && i <= q - 1 {
            print!("{} ", a[(i - (p - 1)) + (r - 1)]);
        }else if r - 1 <= i && i <= s - 1 {
            print!("{} ", a[(i - (r - 1)) + (p - 1)]);
        } else {
            print!("{} ", a[i]);
        }
    }
    println!()
}
