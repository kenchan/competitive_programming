use proconio::input;

fn main() {
    input! {
        n: usize,
        mut a: [usize; n],
        q: usize,
    }

    for _ in 0..q {
        input! {
            q1: usize,
        }

        match q1 {
            1 => {
                input! {
                    k: usize,
                    x: usize,
                }
                let n = a.get_mut(k - 1).unwrap();
                *n = x;
            },
            2 => {
                input! {
                    k: usize
                }
                println!("{}", a.get(k - 1).unwrap())
            }
            _ => {}
        }
    }
}
