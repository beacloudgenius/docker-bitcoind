docker build -t cloudgenius/bitcoind .

docker run -v bitcoind-data:/bitcoin --name=bitcoind-node -d \
            -p 8333:8333 \
            -p 127.0.0.1:8332:8332 \
            -v $PWD/etc/bitcoin.conf:/bitcoin/.bitcoin/bitcoin.conf \
            cloudgenius/bitcoind


bitcoin-cli createwallet testwallet
