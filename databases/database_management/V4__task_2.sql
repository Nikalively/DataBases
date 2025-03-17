-- рекурсивный СТЕ для построения иерархии подчинённх сотрудников

WITH RECURSIVE EmployeeHierarchy AS (
    -- базовый уровень
    SELECT  e.EmployeeID, e.Name, e.ManagerID, e.DepartmentID, e.RoleID
    FROM Employees e
    WHERE e.EmployeeID = 1  -- начинаем с Иванова Ивана

    UNION ALL

    -- рекурсивный уровень
    SELECT  e.EmployeeID, e.Name, e.ManagerID, e.DepartmentID, e.RoleID
    FROM Employees e
    INNER JOIN EmployeeHierarchy eh ON e.ManagerID = eh.EmployeeID
)

-- основной запрос для поиска информации о сотрудниках и их связях
SELECT  eh.EmployeeID, eh.Name AS EmployeeName, eh.ManagerID, d.DepartmentName, r.RoleName,
    COALESCE(GROUP_CONCAT(DISTINCT p.ProjectName ORDER BY p.ProjectName SEPARATOR ', ')) AS ProjectsNames,
    COALESCE(GROUP_CONCAT(DISTINCT t.TaskName ORDER BY t.TaskName SEPARATOR ', ')) AS TasksNames,
    COUNT(DISTINCT t.TaskID) AS TotalTasks,
    COUNT(DISTINCT sub.EmployeeID) AS TotalSubordinates
FROM EmployeeHierarchy eh
LEFT JOIN Departments d ON eh.DepartmentID = d.DepartmentID
LEFT JOIN Roles r ON eh.RoleID = r.RoleID
LEFT JOIN Projects p ON p.DepartmentID = eh.DepartmentID
LEFT JOIN Tasks t ON eh.EmployeeID = t.AssignedTo
LEFT JOIN Employees sub ON eh.EmployeeID = sub.ManagerID
GROUP BY eh.EmployeeID, eh.Name, eh.ManagerID, d.DepartmentName, r.RoleName
ORDER BY eh.Name;