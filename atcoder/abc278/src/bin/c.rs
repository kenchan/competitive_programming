use im_rc::{HashMap, HashSet};
use proconio::input;

fn main() {
    input! {
        _n: usize,
        q: usize,
        t_a_b: [(usize, usize, usize); q],
    }

    let mut ff: HashMap<usize, HashSet<usize>> = HashMap::new();

    for (t, a, b) in t_a_b {
        match t {
            1 => {
                let f = ff.get_mut(&a);
                match f {
                    Some(s) => {
                        s.insert(b);
                    }
                    None => {
                        let mut s = HashSet::<usize>::new();
                        s.insert(b);
                        ff.insert(a, s);
                    }
                }
            }
            2 => {
                let f = ff.get_mut(&a);
                if let Some(s) = f {
                    s.remove(&b);
                }
            }
            3 => {
                if let (Some(fa), Some(fb)) = (ff.get(&a),  ff.get(&b)) {
                    if fa.contains(&b) && fb.contains(&a) {
                        println!("Yes");
                    } else {
                        println!("No");
                    }
                } else {
                    println!("No");
                }
            }
            _ => {}
        }
    }
}
