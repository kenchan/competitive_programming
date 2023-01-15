use std::collections::{HashMap, HashSet};

use proconio::input;

fn main() {
    input! {
        n: usize,
        st: [(String, String); n],
    }

    let m:HashMap<_, _> = st.into_iter().collect();

    for s in m.keys() {
        let mut visits = HashSet::new();
        visits.insert(s.clone());

        loop {
            let v = m.get(s);

            match m.get(s) {
                Some(v) => {
                    
                }
                None => { break; }
            }
        }
    }

}
