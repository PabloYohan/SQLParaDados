CREATE TYPE category_type as ENUM (
    'INCOME',
    'EXPENSE'
);

CREATE TYPE account_type as ENUM(
    'CHECKING',
    'SAVINGS',
    'CASH',
    'PAYMENT',
    'INVESTMENT'
)

CREATE TABLE category (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(30) NOT NULL,
    type category_type NOT NULL,
    active BOOLEAN DEFAULT TRUE
);

CREATE TABLE transaction (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    category_id UUID NOT NULL,
    description text,
    value NUMERIC(15, 2) NOT NULL,
    date TIMESTAMPTZ NOT NULL,
    CONSTRAINT fk_transaction_category FOREIGN KEY (category_id) references category (id)
);

CREATE TABLE account (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(60) NOT NULL,
    type type_account NOT NULL,
    initial_balance NUMERIC(15,2) DEFAULT 0,
    active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
)

ALTER TABLE transaction
ADD COLUMN account_id UUID NOT NULL
REFERENCES account(id)