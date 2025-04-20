use std::io::{self, Write};
use std::process::Command;

fn main() {
    print!("Enter your search query: ");
    io::stdout().flush().unwrap();

    let mut query = String::new();
    io::stdin().read_line(&mut query).unwrap();
    query = query.trim().to_string();

    let url = format!("https://www.google.com/search?q={}", query);

    let command = if cfg!(target_os = "linux") {
        "xdg-open"
    } else if cfg!(target_os = "windows") {
        "start"
    } else if cfg!(target_os = "macos") {
        "open"
    } else {
        panic!("Unsupported OS");
    };

    Command::new(command)
        .arg(&url)
        .spawn()
        .expect("Failed to open browser");

    println!("Searching for: {}", query);
}
