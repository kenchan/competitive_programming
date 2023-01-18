use proconio::input;

fn main() {
    input! {
        x: isize,
        y: isize,
        z: isize,
    }

    if y < 0 {
        if y < x {
            println!("{}", x.abs());
        } else {
            if y < z {
                if z < 0 {
                    println!("{}", x.abs());
                } else {
                    println!("{}", x.abs() + (z.abs() * 2));
                }
            } else {
                println!("{}", -1);
            }
        }
    } else {
        if x < y {
            println!("{}", x.abs());
        } else {
            if z < y {
                if z < 0 {
                    println!("{}", x.abs() + (z.abs() * 2));
                } else {
                    println!("{}", x.abs());
                }
            } else {
                println!("{}", -1);
            }
        }

    }
}
