// Core imports

use zeroable::Zeroable;

// Starknet imports

use starknet::ContractAddress;
use starknet::contract_address_const;

// Local imports

use cairo_erc_3525::module::ERC3525;
use cairo_erc_3525::extensions::metadata::module::ERC3525Metadata;
use cairo_erc_3525::extensions::slotapprovable::module::ERC3525SlotApprovable;
use cairo_erc_3525::extensions::slotenumerable::module::ERC3525SlotEnumerable;

// State

fn STATE() -> ERC3525::ContractState {
    ERC3525::unsafe_new_contract_state()
}

fn STATE_METADATA() -> ERC3525Metadata::ContractState {
    ERC3525Metadata::unsafe_new_contract_state()
}

fn STATE_SLOT_APPROVABLE() -> ERC3525SlotApprovable::ContractState {
    ERC3525SlotApprovable::unsafe_new_contract_state()
}

fn STATE_SLOT_ENUMERABLE() -> ERC3525SlotEnumerable::ContractState {
    ERC3525SlotEnumerable::unsafe_new_contract_state()
}

// Constants

const NAME: felt252 = 'NAME';
const SYMBOL: felt252 = 'SYMBOL';
const VALUE_DECIMALS: u8 = 6;
const TOKEN_ID_1: u256 = 1;
const TOKEN_ID_2: u256 = 2;
const INVALID_TOKEN: u256 = 666;
const SLOT_1: u256 = 'SLOT1';
const SLOT_2: u256 = 'SLOT2';
const VALUE: u256 = 1000;

// Addresses

fn ZERO() -> ContractAddress {
    Zeroable::zero()
}

fn OWNER() -> ContractAddress {
    contract_address_const::<'OWNER'>()
}

fn RECIPIENT() -> ContractAddress {
    contract_address_const::<'RECIPIENT'>()
}

fn SPENDER() -> ContractAddress {
    contract_address_const::<'SPENDER'>()
}

fn OPERATOR() -> ContractAddress {
    contract_address_const::<'OPERATOR'>()
}

fn SOMEONE() -> ContractAddress {
    contract_address_const::<'SOMEONE'>()
}

fn ANYONE() -> ContractAddress {
    contract_address_const::<'ANYONE'>()
}
