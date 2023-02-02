use proconio::input;

fn main() {
    input! {
        n: usize,
        q: usize,
    }

    let mut aa: Vec<Vec<usize>> = vec![];

    for _ in 0..n {
        input! {
            l: usize,
            a: [usize; l],
        };

        aa.push(a);
    }

    for _ in 0..q {
        input! {
            s: usize,
            t: usize,
        }

        println!("{}", aa[s - 1][t - 1]);
    }
}
