use proconio::input;

fn main() {
    input! {
        n: usize,
        mut a: [usize; n],
    }

    let mut alice = 0;
    let mut bob = 0;

    a.sort_by(|a, b| b.partial_cmp(a).unwrap());

    for (i, num) in a.iter().enumerate() {
        if i % 2 == 0 {
            alice += *num;
        } else {
            bob += *num;
        }
    }

    println!("{}", alice - bob)
}
