<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>index</title>
    <script src="https://lib.sinaapp.com/js/jquery/2.0.2/jquery-2.0.2.min.js">
    </script>
    <script>
        function myFunction(){
            if (window.confirm("确认?")) {
                jQuery.ajax({
                    url: "/student/findAll",
                    dataType: 'json',
                    async: false,
                    success: function(json) {
                        alert(json.result);
                        var tableObject =  $("#table");
                        tableObject.empty();
                        tableObject.append('<tr><td>id</td><td>value</td><td>name</td><td>password</td></tr>');
                        for(var i=0;i<json.result.length;i++){
                            var value = json.result[i];
                            var c = "";
                            tableObject.append('<tr><td>'+value.id+'</td><td>'+value.value+'</td><td>'+value.name+'</td><td>'+value.password+'</td></tr>');
                        }
                    }
                });
            }
        }
    </script>
</head>
<body>

<h1>我的 Web 页面</h1>
<table id="table" style="border-width: 1px;padding: 8px;border-style: solid;border-color: #999999;"></table>
<button type="button" onclick="myFunction()">点击这里</button>

</body>
</html>