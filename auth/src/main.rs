extern crate rouille;

fn main() {
    println!("Hello, world!");

    use rouille::Request;
    use rouille::Response;

    rouille::start_server("0.0.0.0:80", move |request| {
        Response::text("Hello, world! Rust is slow some times, but is fine :'(")
    });
}
