use num::Integer;
use proconio::input;

fn main() {
    input! {
        n: usize,
        a: [usize; n],
    }

    let mut array = vec![0; n / 2 + n % 2];

    for i in a {
        array[i / 2] += 1;
    }

    let mut ans = 1;

    if n.is_odd() && array[0] != 1 {
        println!("0");
        return;
    }

    for i in array {
        match i {
            1 => { },
            2 => { ans = (ans * 2) % (10_i128.pow(9) + 7); }
            _ => { println!("0"); return; },
        }
    }

    println!("{}", ans);

}
