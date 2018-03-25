<!DOCTYPE html>
<#assign base=request.contextPath />
<html lang="zh-CN">
    <head>
        <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
        <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
        <link th:href="${base}/css/default.css" rel="stylesheet"/>
        <link rel="icon" th:href="${base}/images/favicon.ico" type="image/x-icon"/>
        <meta charset="UTF-8"/>
        <title>用户列表</title>
    </head>

    <body>

        <div class="contentDiv">

            <h5> 《 Spring Boot 2.x 核心技术实战》第二章快速入门案例</h5>

            <table class="table table-hover table-condensed">
                <legend>
                    <strong>用户列表</strong>
                </legend>
                <thead>
                    <tr>
                        <th>用户编号</th>
                        <th>名称</th>
                        <th>年龄</th>
                        <th>出生时间</th>
                        <th>管理</th>
                    </tr>
                </thead>
                <tbody>
					<#list userList as user>
                    <tr>
                        <td>${user.id}</td>
                        <td><a href="${base}/users/update/${user.id}">${user.name}</a></td>
                        <td>${user.age}</td>
                        <td>${user.birthday}</td>
                        <td><a class="btn btn-danger" href="${base}/users/delete/${user.id}">删除</a></td>
                    </tr>
                    </#list>
                </tbody>
            </table>

            <div><a class="btn btn-primary" href="${base}/users/create" role="button">创建用户</a></div>
        </div>

    </body>
</html>