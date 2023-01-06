use proconio::input;

fn main() {
    input! {
        n: usize,
        x: usize,
        p: [usize; n],
    }

    for (index, i) in p.iter().enumerate() {
        if *i == x {
            println!("{}", index + 1);
        }
    }

}
