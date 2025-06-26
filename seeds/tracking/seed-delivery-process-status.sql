INSERT INTO delivery_process_statuses (
    "name",
    "createdAt",
    "createdBy"
) VALUES
('Criada', NOW(), 'seed'),
('Coleta agendada', NOW(), 'seed'),
('Faturado', NOW(), 'seed'),
('Coletada', NOW(), 'seed'),
('A caminho', NOW(), 'seed'),
('Entregue', NOW(), 'seed'),
('Entrega confirmada', NOW(), 'seed');
