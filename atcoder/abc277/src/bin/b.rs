use im_rc::HashSet;
use proconio::input;

fn main() {
    input! {
        n: usize,
        s: [String; n],
    }

    let mut h = HashSet::<String>::new();

    const C1:[char; 4] = ['H', 'D', 'C', 'S'];
    const C2:[char; 13] = ['A', '2', '3', '4', '5', '6', '7', '8', '9', 'T', 'J', 'Q', 'K'];


    for str in s.clone() {
        h.insert(str.clone());
        let mut chars = str.chars();
        let c1 = chars.next().unwrap();
        let c2 = chars.next().unwrap();

        if !C1.contains(&c1) || !C2.contains(&c2) {
            println!("No");
            return;
        }
    }

    if h.len() == s.len() {
        println!("Yes");
    } else {
        println!("No")
    }
}
