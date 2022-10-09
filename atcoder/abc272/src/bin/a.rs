fn main() {
    let mut s = String::new();
    std::io::stdin().read_line(&mut s).unwrap();
    let _n:i32 = s.trim().parse().unwrap();

    let mut s2 = String::new();
    std::io::stdin().read_line(&mut s2).unwrap();
    let v:Vec<u32> = s2.split_whitespace().map(|c| c.parse().unwrap()).collect();
    let sum:u32 = v.iter().sum();

    println!("{}", sum);
}
