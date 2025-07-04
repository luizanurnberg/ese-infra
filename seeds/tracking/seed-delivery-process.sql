INSERT INTO delivery_processes (
    "fleetId",
    "fleetVehicleId",
    "statusId",
    "startedAt",
    "endedAt",
    "createdAt",
    "createdBy"
) VALUES
(1, 1, 1, NOW() - INTERVAL '10 days', NULL, NOW(), 'seed'),
(2, 2, 2, NOW() - INTERVAL '9 days', NULL, NOW(), 'seed'),
(3, 3, 3, NOW() - INTERVAL '8 days', NULL, NOW(), 'seed'),
(4, 4, 4, NOW() - INTERVAL '7 days', NULL, NOW(), 'seed'),
(5, 5, 5, NOW() - INTERVAL '6 days', NULL, NOW(), 'seed'),
(6, 6, 6, NOW() - INTERVAL '5 days', NULL, NOW(), 'seed'),
(7, 7, 7, NOW() - INTERVAL '4 days', NOW() - INTERVAL '1 days', NOW(), 'seed'),
(8, 8, 1, NOW() - INTERVAL '3 days', NULL, NOW(), 'seed'),
(9, 9, 2, NOW() - INTERVAL '2 days', NULL, NOW(), 'seed'),
(10, 10, 3, NOW() - INTERVAL '1 days', NULL, NOW(), 'seed'),
(11, 11, 4, NOW() - INTERVAL '12 days', NULL, NOW(), 'seed'),
(12, 12, 5, NOW() - INTERVAL '11 days', NULL, NOW(), 'seed'),
(13, 13, 6, NOW() - INTERVAL '10 days', NULL, NOW(), 'seed'),
(14, 14, 7, NOW() - INTERVAL '9 days', NOW() - INTERVAL '2 days', NOW(), 'seed'),
(15, 15, 1, NOW() - INTERVAL '8 days', NULL, NOW(), 'seed'),
(16, 16, 2, NOW() - INTERVAL '7 days', NULL, NOW(), 'seed'),
(17, 17, 3, NOW() - INTERVAL '6 days', NULL, NOW(), 'seed'),
(18, 18, 4, NOW() - INTERVAL '5 days', NULL, NOW(), 'seed'),
(19, 19, 5, NOW() - INTERVAL '4 days', NULL, NOW(), 'seed'),
(20, 20, 6, NOW() - INTERVAL '3 days', NULL, NOW(), 'seed');
