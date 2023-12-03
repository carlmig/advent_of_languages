use std::io;
use rand::Rng;
use std::collections::HashSet;


fn main() {
    let mut rng = rand::thread_rng();

    println!("Please add the names for Secret Santa: ");

    let mut person = String::new();
    let mut names: Vec<String> = Vec::new();

    io::stdin().read_line(&mut person).expect("Failed to read person");
    let mut input_len = person.len();
    
    names.push(person.trim().to_string());

    while input_len > 0 {
        
        let mut person = String::new();
        io::stdin().read_line(&mut person).expect("Failed to read person");
        input_len = person.trim().len();

        if input_len > 0 {
            names.push(person.trim().to_string());
        }
        
    }

    let total_names = names.len();
    
    if total_names % 2 != 0 {
        println!("Sorry, you must enter an even number of names");
        return;
    }

    let mut values: HashSet<usize> = HashSet::new();

    for name in &names {
        
        let mut valid_mapping = false;

        while !&valid_mapping {

            let pos = rng.gen_range(0..total_names);

            let possible_pair = &names[pos];

            if !possible_pair.eq(name) && !values.contains(&pos) {
                println!("Pair: {name} - {possible_pair}");
                valid_mapping = true;
                values.insert(pos);
            }
        }
        
    }
}


