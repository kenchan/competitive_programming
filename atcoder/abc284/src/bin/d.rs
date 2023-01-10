use num_integer::Roots;
use proconio::input;

fn main() {
    input! {
        t: usize,
        tests: [usize; t],
    }
    for n in tests {
        for i in 2..=n {
            if n % i != 0 {
                continue;
            }

            if n % (i * i) == 0 {
                println!("{} {}", i, n / i / i);
            } else {
                println!("{} {}", (n / i).sqrt(), i);
            }
            break;
        }
    }
}
