-- Tabela: Quotation
CREATE TABLE Quotation (
    pk_quotation SERIAL PRIMARY KEY,
    qu_cpf VARCHAR(255) NOT NULL,
    qu_email VARCHAR(255) NOT NULL,
    qu_current_date TIMESTAMP NOT NULL,
    fk_origin_address INT,
    fk_destination_address INT,
    created_at TIMESTAMP,
    created_by VARCHAR(255),
    updated_at TIMESTAMP,
    updated_by VARCHAR(255),
    deleted_at TIMESTAMP,
    deleted_by VARCHAR(255)
    -- Sem FOREIGN KEY físicas, mantendo referência apenas lógica
)

INSERT INTO Quotation (qu_cpf, qu_email, qu_current_date, fk_origin_address, fk_destination_address, created_at, created_by)
VALUES
    ('123.456.789-00', 'usuarioa@example.com', '2023-08-22 10:00:00', 1, 2, NOW(), 'seed'),
    ('987.654.321-00', 'usuariob@example.com', '2023-08-23 15:00:00', 2, 3, NOW(), 'seed'),
    ('111.222.333-00', 'usuarioc@example.com', '2023-08-24 09:30:00', 1, 3, NOW(), 'seed'),
    ('222.333.444-55', 'usuariod@example.com', '2023-08-25 11:00:00', 2, 1, NOW(), 'seed'),
    ('333.444.555-66', 'usuarioe@example.com', '2023-08-26 12:30:00', 3, 2, NOW(), 'seed'),
    ('444.555.666-77', 'usuariof@example.com', '2023-08-27 08:45:00', 1, 2, NOW(), 'seed'),
    ('555.666.777-88', 'usuariog@example.com', '2023-08-28 14:15:00', 2, 3, NOW(), 'seed'),
    ('666.777.888-99', 'usuarioh@example.com', '2023-08-29 16:20:00', 3, 1, NOW(), 'seed'),
    ('777.888.999-00', 'usuarioi@example.com', '2023-08-30 09:00:00', 1, 3, NOW(), 'seed'),
    ('888.999.000-11', 'usuarioj@example.com', '2023-08-31 10:10:00', 2, 1, NOW(), 'seed'),
    ('999.000.111-22', 'usuariok@example.com', '2023-09-01 13:50:00', 3, 2, NOW(), 'seed'),
    ('000.111.222-33', 'usuariol@example.com', '2023-09-02 15:25:00', 1, 2, NOW(), 'seed'),
    ('111.222.333-44', 'usuariom@example.com', '2023-09-03 11:40:00', 2, 3, NOW(), 'seed'),
    ('222.333.444-55', 'usuarion@example.com', '2023-09-04 08:30:00', 3, 1, NOW(), 'seed'),
    ('333.444.555-66', 'usuarioo@example.com', '2023-09-05 12:00:00', 1, 3, NOW(), 'seed');
