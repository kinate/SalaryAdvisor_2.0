-- Migration number: 0001 	 2024-10-01T21:06:45.023Z
CREATE TABLE `salaries` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `sector` TEXT NOT NULL,
  `general_code` TEXT NOT NULL,
  `code_category` TEXT NOT NULL,
  `salary_code` TEXT NOT NULL,
  `salary` TEXT NOT NULL,
  `year` TEXT NOT NULL,
  `desc` TEXT NOT NULL,
  `status` TEXT NOT NULL,
  `created_at` TEXT DEFAULT NULL,
  `updated_at` TEXT DEFAULT NULL
);

-- Insert data into the 'salaries' table

INSERT INTO `salaries` (`id`, `sector`, `general_code`, `code_category`, `salary_code`, `salary`, `year`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TANZANIA GOVERNMENT HEALTH SCALE', 'TGHS', 'TGHS A', 'TGHS A.1', '492000', '2022/2023', 'TANZANIA GOVERNMENT HEALTH SCALE', 'active', '2024-08-14 16:53:20', '2024-08-14 16:53:20'),
(2, 'TANZANIA GOVERNMENT HEALTH SCALE', 'TGHS', 'TGHS A', 'TGHS A.2', '500000', '2022/2023', 'TANZANIA GOVERNMENT HEALTH SCALE', 'active', '2024-08-14 16:53:20', '2024-08-14 16:53:20'),
(3, 'TANZANIA GOVERNMENT HEALTH SCALE', 'TGHS', 'TGHS B', 'TGHS B.1', '740000', '2022/2023', 'TANZANIA GOVERNMENT HEALTH SCALE', 'active', '2024-08-14 16:53:20', '2024-08-14 16:53:20'),
(4, 'TANZANIA GOVERNMENT HEALTH SCALE', 'TGHS', 'TGHS B', 'TGHS B.2', '749000', '2022/2023', 'TANZANIA GOVERNMENT HEALTH SCALE', 'active', '2024-08-14 16:53:20', '2024-08-14 16:53:20');