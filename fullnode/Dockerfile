FROM bts-base

EXPOSE 8090
VOLUME ["/bts/bitshares-core/programs/witness_node/witness_node_data_dir"]
WORKDIR /bts/bitshares-core/programs/witness_node


ENTRYPOINT ["./witness_node", "--rpc-endpoint", "0.0.0.0:8090"]

#( cmdpid=$BASHPID; (sleep 10; kill $cmdpid) & exec ./witness_node )
FROM bts-base
