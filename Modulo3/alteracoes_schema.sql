CREATE TABLE titles_to_pay(
    id VARCHAR(1) PRIMARY KEY NOT NULL,
    original_value NUMERIC(15,2) NOT NULL,
    end_date DATE NOT NULL
)

CREATE TABLE payments(
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    title_id VARCHAR(1) NOT NULL,
    paid_value NUMERIC(15,2) NOT NULL,
    payment_date TIMESTAMPTZ NOT NULL,
    CONSTRAINT fk_titles_payment FOREIGN KEY (title_id) REFERENCES titles_to_pay (id)
)