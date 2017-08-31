# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: hathcoin.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "rpc.TransactionHeader" do
    optional :From, :bytes, 1
    optional :To, :bytes, 2
    optional :Timestamp, :uint32, 3
    optional :PayloadHash, :bytes, 4
    optional :PayloadLength, :uint32, 5
    optional :Nonce, :uint32, 6
  end
  add_message "rpc.Transaction" do
    optional :Header, :message, 1, "rpc.TransactionHeader"
    optional :Hash, :bytes, 2
    optional :Payload, :bytes, 3
  end
  add_message "rpc.BlockHeader" do
    optional :Version, :int32, 1
    optional :Origin, :bytes, 2
    optional :PrevHash, :bytes, 3
    optional :MerkelRoot, :bytes, 4
    optional :Timestamp, :uint32, 5
    optional :Nonce, :uint32, 6
  end
  add_message "rpc.Block" do
    optional :BlockHeader, :message, 1, "rpc.BlockHeader"
    optional :Hash, :bytes, 2
    repeated :Transaction, :message, 3, "rpc.Transaction"
  end
  add_message "rpc.Peer" do
    optional :Addr, :string, 1
    optional :PublicKey, :string, 2
  end
  add_message "rpc.Peers" do
    repeated :Peer, :message, 1, "rpc.Peer"
  end
  add_message "rpc.Empty" do
  end
end

module Rpc
  TransactionHeader = Google::Protobuf::DescriptorPool.generated_pool.lookup("rpc.TransactionHeader").msgclass
  Transaction = Google::Protobuf::DescriptorPool.generated_pool.lookup("rpc.Transaction").msgclass
  BlockHeader = Google::Protobuf::DescriptorPool.generated_pool.lookup("rpc.BlockHeader").msgclass
  Block = Google::Protobuf::DescriptorPool.generated_pool.lookup("rpc.Block").msgclass
  Peer = Google::Protobuf::DescriptorPool.generated_pool.lookup("rpc.Peer").msgclass
  Peers = Google::Protobuf::DescriptorPool.generated_pool.lookup("rpc.Peers").msgclass
  Empty = Google::Protobuf::DescriptorPool.generated_pool.lookup("rpc.Empty").msgclass
end