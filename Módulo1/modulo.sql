CREATE TYPE category_type as ENUM (
    'INCOME',
    'EXPENSE'
);

CREATE TABLE category (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(30) NOT NULL,
    type category_type NOT NULL,
    active Boolean NOT NULL
);

CREATE TABLE transaction (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    category_id UUID NOT NULL,
    description text,
    value NUMERIC(15, 2) NOT NULL,
    date TIMESTAMP NOT NULL,
    CONSTRAINT fk_transaction_category FOREIGN KEY (category_id) references category (id)
);