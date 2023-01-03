use proconio::input;

fn main() {
    input! {
        h: usize,
        w: usize,
        mut s: [String; h],
        mut t: [String; h],
    }

    let mut sn = vec!["".to_string(); w];
    let mut tn = vec!["".to_string(); w];

    for string in s {
        for (i, c) in string.chars().enumerate() {
            sn[i].push(c);
        }
    }

    for string in t {
        for (i, c) in string.chars().enumerate() {
            tn[i].push(c);
        }
    }

    sn.sort();
    tn.sort();

    if sn == tn {
        println!("Yes")
    } else {
        println!("No");
    }

}
