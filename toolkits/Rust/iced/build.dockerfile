FROM rust:slim

RUN apt-get update && apt-get install --no-install-recommends -qq cmake make g++ pkg-config libfontconfig-dev libx11-6 libxcursor1 libxrandr-dev libxi6 libx11-xcb-dev libegl-dev

ADD ./ /workdir
WORKDIR /workdir

RUN cargo clean
RUN cargo build --release

CMD cp ./target/release/app /executable/
