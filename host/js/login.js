/**
 * Created by Administrator on 2017/6/29.
 */
$(function(){

    $('#UserMailid').blur(usermailCheck);
    $('#UserPwid').blur(userpwCheck);

    $('#login').click(function(){
        $('#login').style("color","red");
        var umail= $.trim($('#UserMailid').val());
        var upw= $.trim($('#UserPwid').val());
        $.ajax({
            type:"post",
            url:"../test.php",
            // url:"http://localhost:3306/user_login.php",
            data:{UserMail:umail,UserPw:upw},
            success:function(data){
                console.log(data);
                if(data.code!=1){//登录不成功
                    // $('#uphone').show().text('用户名或密码不正确');
                    alert('false');
                }else{//登录成功
                    // sessionStorage.UserId=data.UserId;
                    // sessionStorage.UserPhone=data.UserPhone;
                    // history.go(-1);
                    // history.go(vip.html);
                    window.location.href="http://www.baidu.com";
                }
            }
        });
        // }

    });

    //验证用户名
    function usermailCheck(){
        var umail= $.trim($('#UserMailid').val());
        return true;
    }
    //验证密码
    function userpwCheck(){
        var upw= $.trim($('#UserPwid').val());
        return true;
    }
});
