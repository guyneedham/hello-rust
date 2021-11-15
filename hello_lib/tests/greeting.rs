extern crate hello_lib;

#[test]
fn test_greeting() {
    let hello = hello_lib::greeter::Greeter::new("Hello");
    assert_eq!("Hello world", hello.greet("world"));
}
