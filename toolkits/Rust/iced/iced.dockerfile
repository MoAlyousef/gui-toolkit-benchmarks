FROM rust:slim

RUN apt-get update && apt-get install --no-install-recommends -qq cmake

ADD ./ /iced
WORKDIR /iced

RUN cargo clean
RUN cargo build --release

CMD ./target/release/iced
