FROM bts-base

EXPOSE 8090
VOLUME ["/bts/bitshares-core/programs/witness_node/witness_node_data_dir"]
WORKDIR /bts/bitshares-core/programs/witness_node
RUN timeout --preserve-status 60 ./witness_node
RUN rm -rf /bts/bitshares-core/programs/witness_node/witness_node_data_dir/blockchain
COPY conf/config.ini  /bts/bitshares-core/programs/witness_node/witness_node_data_dir/
COPY conf/blockchain.tar.gz /bts/bitshares-core/witness_node/witness_node_data_dir/
RUN cd /bts/bitshares-core/witness_node/witness_node_data_dir/ && tar -zxvf blockchain.tar.gz && rm blockchain.tar.gz && cd ..
#RUN ./witness_node
ENTRYPOINT ["./witness_node"," --plugin",  "\" witness\""]

