<!DOCTYPE html><#assign base=request.contextPath />
<html lang="zh-CN">
    <head>
        <script type="text/javascript" th:src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
        <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="${base}/css/default.css}" rel="stylesheet"/>
        <link rel="icon" href="${base}/images/favicon.ico" type="image/x-icon"/>
        <meta charset="UTF-8"/>
        <title>用户管理</title>
    </head>

    <body>
        <div class="contentDiv">

            <h5> 《 Spring Boot 2.x 核心技术实战》第二章快速入门案例</h5>

            <legend>
                <strong>用户管理</strong>
            </legend>

            <form action="${base}/users/${action}" method="post" class="form-horizontal">

                <input type="hidden" name="id" value="${user.id!}"/>

                <div class="form-group">
                    <label for="user_name" class="col-sm-2 control-label">名称:</label>
                    <div class="col-xs-4">
                        <input type="text" class="form-control" id="user_name" name="name" value="${user.name!}" />
                    </div>
                </div>

                <div class="form-group">
                    <label for="user_age" class="col-sm-2 control-label">年龄:</label>
                    <div class="col-xs-4">
                        <input type="text" class="form-control" id="user_age" name="age" value="${user.age!}"/>
                    </div>
                </div>

                <div class="form-group">
                    <label for="user_birthday" class="col-sm-2 control-label">出生日期:</label>
                    <div class="col-xs-4">
                        <input type="date" class="form-control" id="user_birthday" name="birthday" value="${user.birthday!}"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input class="btn btn-primary" type="submit" value="提交"/>&nbsp;&nbsp;
                        <input class="btn" type="button" value="返回" onclick="history.back()"/>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>