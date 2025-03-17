-- рекурсивный СТЕ для постоения иерархии подчинённых сотрудников
WITH RECURSIVE EmployeeHierarchy AS (
    -- базовый уровень: выбираем Ивана Иванова, а также всех, кто ему подчиняется
    SELECT e.EmployeeID, e.Name, e.ManagerID, e.DepartmentID, e.RoleID   -- ID сотрудника, его имя, ID руководителя, ID отдела (к которому принадлежит сотрудник), ID роли, занимаемую сотрудников
    FROM Employees e
    WHERE e.EmployeeID = 1  -- начинаем с Иванова Ивана

    UNION ALL

    -- рекурсивный уровень: находим сотрудников, чьи менеджеры находятся в EmployeeHierarchy
    SELECT e.EmployeeID, e.Name, e.ManagerID, e.DepartmentID, e.RoleID
    FROM Employees e
    INNER JOIN EmployeeHierarchy eh ON e.ManagerID = eh.EmployeeID
)

SELECT   -- основной запрос для поиска информации о сотрудниках и их связях
    eh.EmployeeID, eh.Name AS EmployeeName, eh.ManagerID, d.DepartmentName, r.RoleName,
    COALESCE(GROUP_CONCAT(DISTINCT p.ProjectName ORDER BY p.ProjectName SEPARATOR ', ')) AS ProjectsNames,
    COALESCE(GROUP_CONCAT(DISTINCT t.TaskName ORDER BY t.TaskName SEPARATOR ', ')) AS TasksNames
FROM EmployeeHierarchy eh
LEFT JOIN Departments d ON eh.DepartmentID = d.DepartmentID   -- подключаем информацию об отделах
LEFT JOIN Roles r ON eh.RoleID = r.RoleID                     -- подключаем информацию о ролях
LEFT JOIN Projects p ON p.DepartmentID = eh.DepartmentID      -- подключаем проекты, связанные с отделом сотрудника
LEFT JOIN Tasks t ON eh.EmployeeID = t.AssignedTo             -- подключаем задачи, назначенные сотруднику
GROUP BY eh.EmployeeID, eh.Name, eh.ManagerID, d.DepartmentName, r.RoleName
ORDER BY eh.Name;    -- сортировка по имени сотрудника