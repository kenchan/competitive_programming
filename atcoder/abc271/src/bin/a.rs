use proconio::input;

fn main() {
    input! {
        mut n: usize,
    }

    if n < 16 {
        print!("0")
    } else {
        let i = n / 16;
        match i {
            10 => { print!("A") },
            11 => { print!("B") },
            12 => { print!("C") },
            13 => { print!("D") },
            14 => { print!("E") },
            15 => { print!("F") },
            _ => { print!("{}", i )}
        }
    }
    let i = n % 16;
    match i {
        10 => { println!("A") },
        11 => { println!("B") },
        12 => { println!("C") },
        13 => { println!("D") },
        14 => { println!("E") },
        15 => { println!("F") },
        _ => { println!("{}", i )}
    }
}
