use std::collections::{HashMap, HashSet};

use proconio::input;

fn main() {
    input! {
        n: usize,
        st: [(String, String); n],
    }

    let m:HashMap<_, _> = st.into_iter().collect();
    let mut ok_list = HashSet::new();

    for mut s in m.keys() {
        if ok_list.contains(s) {
            continue;
        }

        let mut visits = HashSet::new();
        visits.insert(s.clone());
        ok_list.insert(s.clone());

        loop {
            match m.get(s) {
                Some(v) => {
                    if visits.contains(v) {
                        println!("No");
                        return;
                    } else {
                        visits.insert(v.clone());
                        ok_list.insert(v.clone());
                        s = v;
                    }
                }
                None => { break; }
            }
        }

    }

    println!("Yes");
}
