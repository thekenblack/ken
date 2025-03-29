
// flush
fn flush() {
    use std::io::Write;
    std::io::stdout().flush().unwrap();
}

// print and flush
macro_rules! printfl {
    ($($arg:tt)*) => {{
        print!($($arg)*);
        flush();
    }};
    () => {{
        flush();
    }};
}

// get line
fn get_line() -> String {
    let mut line = String::new();
    std::io::stdin().read_line(&mut line).unwrap();
    line.trim().to_string()
}

// print msg and get line
macro_rules! msg_line {
    ($($arg:tt)*) => {{
        printfl!($($arg)*);
        get_line()
    }};
    () => {{
        flush();
        get_line()
    }};
}

fn main() {
    let name = msg_line!("What is your name? ");
    println!("Hello, {}!", name);
}
