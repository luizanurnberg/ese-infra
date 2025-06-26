CREATE TABLE IF NOT EXISTS "User" (
    pk_user SERIAL PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    user_cpf VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    user_session VARCHAR(255),
    created_at TIMESTAMP DEFAULT NOW(),
    created_by VARCHAR(255),
    updated_at TIMESTAMP,
    updated_by VARCHAR(255),
    deleted_at TIMESTAMP,
    deleted_by VARCHAR(255)
);

INSERT INTO "User" (user_name, user_cpf, user_email, user_password, user_session, created_by)
VALUES
    ('Usuário A', '123.456.789-00', 'usuarioa@example.com', 'senhaA123', 'sessaoA', 'seed'),
    ('Usuário B', '987.654.321-00', 'usuariob@example.com', 'senhaB456', 'sessaoB', 'seed'),
    ('Usuário C', '111.222.333-00', 'usuarioc@example.com', 'senhaC789', 'sessaoC', 'seed'),
    ('Usuário D', '222.333.444-55', 'usuariod@example.com', 'senhaD321', 'sessaoD', 'seed'),
    ('Usuário E', '333.444.555-66', 'usuarioe@example.com', 'senhaE654', 'sessaoE', 'seed'),
    ('Usuário F', '444.555.666-77', 'usuariof@example.com', 'senhaF987', 'sessaoF', 'seed'),
    ('Usuário G', '555.666.777-88', 'usuariog@example.com', 'senhaG111', 'sessaoG', 'seed'),
    ('Usuário H', '666.777.888-99', 'usuarioh@example.com', 'senhaH222', 'sessaoH', 'seed'),
    ('Usuário I', '777.888.999-00', 'usuarioi@example.com', 'senhaI333', 'sessaoI', 'seed'),
    ('Usuário J', '888.999.000-11', 'usuarioj@example.com', 'senhaJ444', 'sessaoJ', 'seed'),
    ('Usuário K', '999.000.111-22', 'usuariok@example.com', 'senhaK555', 'sessaoK', 'seed'),
    ('Usuário L', '000.111.222-33', 'usuariol@example.com', 'senhaL666', 'sessaoL', 'seed'),
    ('Usuário M', '111.222.333-44', 'usuariom@example.com', 'senhaM777', 'sessaoM', 'seed'),
    ('Usuário N', '222.333.444-55', 'usuarion@example.com', 'senhaN888', 'sessaoN', 'seed'),
    ('Usuário O', '333.444.555-66', 'usuarioo@example.com', 'senhaO999', 'sessaoO', 'seed');
