Reporte semana de programagion genenral ###
Reporte semana de programagion genenral ###
SELECT
    u.idnumber AS cedula,
    CONCAT(u.firstname, ' ', u.lastname) AS nombre,
    u.email AS email,
    u.phone2 AS telefono,
    wpdba13.data AS cargo,
    u.city AS ciudad,
    wpdba14.data AS area,
    wpdba5.data AS empresa,
    wpdba6.data AS nombre_jefe,
    wpdba7.data AS email_jefe,
    wpdba8.data AS telefono_jefe,
    wpdba9.data AS canal,
    u.lastaccess AS lastaccess,
    wpdba10.data AS organizacion,
    wpdba11.data AS pais,
    wpdba12.data AS poblacion
FROM
    {user} u
    LEFT JOIN {tool_tenant_user} wpdba2 ON wpdba2.userid = u.id
    LEFT JOIN {tool_tenant} wpdba3 ON wpdba3.id = wpdba2.tenantid AND wpdba3.archived = 0
    left join {user_info_data} wpdba13 on wpdba13.userid = u.id AND wpdba13.fieldid = 10
    left join {user_info_data} wpdba14 on wpdba14.userid = u.id AND wpdba14.fieldid = 11
    left join {user_info_data} wpdba5 on wpdba5.userid = u.id AND wpdba5.fieldid = 2
    left join {user_info_data} wpdba6 on wpdba6.userid = u.id AND wpdba6.fieldid = 3
    left join {user_info_data} wpdba7 on wpdba7.userid = u.id AND wpdba7.fieldid = 4
    left join {user_info_data} wpdba8 on wpdba8.userid = u.id AND wpdba8.fieldid = 5
    left join {user_info_data} wpdba9 on wpdba9.userid = u.id AND wpdba9.fieldid = 6
    left join {user_info_data} wpdba10 on wpdba10.userid = u.id AND wpdba10.fieldid = 7
    left join {user_info_data} wpdba11 on wpdba11.userid = u.id AND wpdba11.fieldid = 8
    left join {user_info_data} wpdba12 on wpdba12.userid = u.id AND wpdba12.fieldid = 9
