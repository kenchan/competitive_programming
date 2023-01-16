use std::collections::HashMap;

use proconio::input;

fn main() {
    input! {
        n: usize,
        m: usize,
        ab: [(usize, usize); m],
    }

    let mut m: HashMap<usize, Vec<usize>> = HashMap::new();

    for i in 1..=n {
        m.entry(i).or_default();
    }

    for (a, b) in ab {
        m.entry(a).and_modify(|v| v.push(b));
        m.entry(b).and_modify(|v| v.push(a));
    }

    for i in 1..=n {
        let ans = m.get_mut(&i).unwrap();
        if ans.len() == 0 {
            println!("0");
            continue;
        } else {
            ans.sort();

            println!("{} {}", ans.len(), ans.into_iter().map(|i| i.to_string()).collect::<Vec<_>>().join(" "))
        }
    }

}
