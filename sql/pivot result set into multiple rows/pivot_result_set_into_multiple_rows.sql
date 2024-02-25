SELECT 
    index_desc,
    MAX(CASE
        WHEN job = 'ANALYST' THEN ename
        ELSE NULL
    END) AS analysts,
    MAX(CASE
        WHEN job = 'CLERK' THEN ename
        ELSE NULL
    END) AS clerks,
    MAX(CASE
        WHEN job = 'MANAGER' THEN ename
        ELSE NULL
    END) AS mgrs,
    MAX(CASE
        WHEN job = 'PRESIDENT' THEN ename
        ELSE NULL
    END) AS prez,
    MAX(CASE
        WHEN job = 'SALESMAN' THEN ename
        ELSE NULL
    END) AS sales
FROM
    (SELECT 
        @r:=IF(@u = job, @r + 1, 1) index_desc, job, ename, @u:=job
    FROM
        (SELECT 
        (SELECT @r:=1) AS r, (SELECT @u:=NULL) AS u, job, ename
    FROM
        classicmodels.employee) x) y
GROUP BY index_desc