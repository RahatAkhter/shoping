<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChatBox.aspx.cs" Inherits="shoping.ChatBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <!--online-->

    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">


<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="jquery-1.6.4.min.js"></script>
    <script src="Scripts/jquery.signalR-2.4.1.min.js"></script>
    <script src="/signalR/hubs"></script>
        <script type="text/javascript">


            $(document).ready(function () {
               // GetChats();
                
             var $tbl = $('#datatable');
                    $.ajax({
                        url: 'ChatBox.aspx/abc',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        method: 'post',
                        data: "{}",
                        async: false,
                        success: function (data) {
                            alert("ssss");
                       len = data.d.length;

                                $tbl.empty();
                                $tbl.append(' <tr><th>emp_id</th><th>Name</th><th>Date</th><th>TimeIn</th><th>TimeOut</th><th></th></tr>');

                                for (var i = 0; i < data.d.length; i++) {


                                    $tbl.append('<tr ><td ><label  id="emp' + i + '">' + data.d[i].friend_name + '</label></td><td><label  id="dd' + i + '">dddd</label></td><td>' + data.d[i].friend_name + '</td><td><input type="time" id="txtin' + i + '" class="form-control"  /></td><td><input type="time" id="txtout' + i + '"  class="form-control"/></td><td><label style="color:red" id="lbl' + i + '">Absent</label></td></tr>');
                                }

                                

                          
                        },
                        error: function (err) {
                            alert("Error");
                        }


                    });

        

            });

       $(function () {
        var notifications = $.connection.myHub;
       
         notifications.client.displayStatus = function () {
               show_New_Deals(2);
           
        };
        
        $.connection.hub.start().done(function (res) {
            alert("connection started" + res)
            show_New_Deals(2);
        }).fail(function (e) {
            alert(e);
        });
    });

    //           function GetChats() {
    //               var tbl = $('#main2');
                   
    //        $.ajax({

    //            type: "POST",
    //            contentType: "application/json",
    //            url: 'ChatBox.aspx/Getuser',
    //            data: "{}",
    //            datatype: "json",
    //            async: false,
    //            success: function (data) {
    //                alert(data.d);
    //                //debugger;
    //                // if (data.d.length >0) {
    //                //      var newdata = data.d;
    //                //      tbl.empty();
                        
    //                    for (var i = 0; i < data.d.length; i++) {
                             
    //                         tbl.append('<div class="chat_list" id="' + i + '"  onclick="func2(' + i + ');" ><span id="Text' + i + '" style=" display:none;">' + newdata[i].id + '</span><div class="chat_people"><div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div><div class="chat_ib"> <h5>' + newdata[i].friend_name + '</h5></div></div></div>');
    //                       // tbl.append(data.d[i].id + '<br>');
                           
    //                      }
                          
    //                //  }
                    
    //            },
    //            error: function (err) {
    //                console.log(err);
    //            }
    //        });

    //        setTimeout(GetChats, 15000);
    //}



       

        function show_New_Deals(u_id) {
            alert("func mai he");
            var tbl = $('#chat');
            if (u_id == '0') {
                console.log("");
            }
            else {

                $.ajax({

                    type: "POST",
                    contentType: "application/json",
                    url: 'ChatBox.aspx/GetMessages',
                    data: "{}",
                    datatype: "json",
                    success: function (data) {

                        debugger;
                        if (data.d.length > 0) {

                            if (data.d != "") {
                                var newdata = data.d;
                                tbl.empty();

                                var rows = [];
                                for (var i = 0; i < newdata.length; i++) {

                                    if ((newdata[i].myid == newdata[i].from_id)) {
                                        rows.push('<div class="outgoing_msg"><div class="sent_msg"><p>' + newdata[i].text + '</p><span class="time_date"> 11:01 AM    |    Today</span></div></div>');

                                    }
                                    else {
                                        rows.push('<div class="incoming_msg"><div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div><div class="received_msg"><divclass="received_withd_msg"><p>' + newdata[i].text + '</p><spanclass="time_date"> 11:01 AM    |    Today</span></div></div></div>');

                                    }

                                }
                            }
                            
                            tbl.append(rows.join(''));
                        }

                    },
                    error: function (err) {
                       // Console.log(err + "errooorr he");
                    }
                });

            }
         
        }



  


                function func2(i) {
            $("div").removeClass("active_chat");
            document.getElementById(i).className += ' active_chat'
            var x = document.getElementById(i);
                     var txt=($('#Text'+i).val());
             
            alert(txt);
            //if (u_id == '0') {

            //    console.log("");
            //}
            //else {

            //    show_New_Deals(u_id);
            //}

        }

   function send() {

    var msg = $('#txt').val();
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: 'ChatBox.aspx/Send_Msg',
                    data: "{'txt':'" + msg +"'}",
                    dataType: "json",

                    async: false,

                    success: function (data) {

                        if (data.d == "Saved") {
                            alert("send ho gya");
                            document.getElementById('txt').value = "";
                        }
                        
                        else {
                            alert(data.d.toString());
                        }
                    },
                    error: function (err) {

                        alert("error occur" + JSON.stringify(err));
                    }


                });
           
        }



    </script>
     <style>
        .container{max-width:1170px; margin:auto;}
img{ max-width:100%;}
.inbox_people {
  background: #f8f8f8 none repeat scroll 0 0;
  float: left;
  overflow: hidden;
  width: 40%; border-right:1px solid #c4c4c4;
}
.inbox_msg {
  border: 1px solid #c4c4c4;
  clear: both;
  overflow: hidden;
}
.top_spac{ margin: 20px 0 0;}


.recent_heading {float: left; width:40%;}
.srch_bar {
  display: inline-block;
  text-align: right;
  width: 60%; padding:
}
.headind_srch{ padding:10px 29px 10px 20px; overflow:hidden; border-bottom:1px solid #c4c4c4;}

.recent_heading h4 {
  color: #05728f;
  font-size: 21px;
  margin: auto;
}
.srch_bar input{ border:1px solid #cdcdcd; border-width:0 0 1px 0; width:80%; padding:2px 0 4px 6px; background:none;}
.srch_bar .input-group-addon button {
  background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
  border: medium none;
  padding: 0;
  color: #707070;
  font-size: 18px;
}
.srch_bar .input-group-addon { margin: 0 0 0 -27px;}

.chat_ib h5{ font-size:15px; color:#464646; margin:0 0 8px 0;}
.chat_ib h5 span{ font-size:13px; float:right;}
.chat_ib p{ font-size:14px; color:#989898; margin:auto}
.chat_img {
  float: left;
  width: 11%;
}
.chat_ib {
  float: left;
  padding: 0 0 0 15px;
  width: 88%;
}

.chat_people{ overflow:hidden; clear:both;}
.chat_list {
  border-bottom: 1px solid #c4c4c4;
  margin: 0;
  padding: 18px 16px 10px;
}
.inbox_chat { height: 550px; overflow-y: scroll;}

.active_chat{ background:#ebebeb;}

.incoming_msg_img {
  display: inline-block;
  width: 6%;
}
.received_msg {
  display: inline-block;
  padding: 0 0 0 10px;
  vertical-align: top;
  width: 92%;
 }
 .received_withd_msg p {
  background: #ebebeb none repeat scroll 0 0;
  border-radius: 3px;
  color: #646464;
  font-size: 14px;
  margin: 0;
  padding: 5px 10px 5px 12px;
  width: 100%;
}
.time_date {
  color: #747474;
  display: block;
  font-size: 12px;
  margin: 8px 0 0;
}
.received_withd_msg { width: 57%;}
.mesgs {
  float: left;
  padding: 30px 15px 0 25px;
  width: 60%;
}

 .sent_msg p {
  background: #05728f none repeat scroll 0 0;
  border-radius: 3px;
  font-size: 14px;
  margin: 0; color:#fff;
  padding: 5px 10px 5px 12px;
  width:100%;
}
.outgoing_msg{ overflow:hidden; margin:26px 0 26px;}
.sent_msg {
  float: right;
  width: 46%;
}
.input_msg_write input {
  background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
  border: medium none;
  color: #4c4c4c;
  font-size: 15px;
  min-height: 48px;
  width: 100%;
}

.type_msg {border-top: 1px solid #c4c4c4;position: relative;}
.msg_send_btn {
  background: #05728f none repeat scroll 0 0;
  border: medium none;
  border-radius: 50%;
  color: #fff;
  cursor: pointer;
  font-size: 17px;
  height: 33px;
  position: absolute;
  right: 0;
  top: 11px;
  width: 33px;
}
.messaging { padding: 0 0 50px 0;}
.msg_history {
  height: 516px;
  overflow-y: auto;
}


    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container">
<div class="messaging">
      <div class="inbox_msg">
        <div class="inbox_people">
          <div class="headind_srch">
            <div class="recent_heading">
              <h4>Recent</h4>
            </div>
            <div class="srch_bar">
              <div class="stylish-input-group">
                <input type="text" class="search-bar"  placeholder="Search" >
                <span class="input-group-addon">
                <button type="button" onclick="func();"> <i class="fa fa-search" aria-hidden="true"></i> </button>
                </span> </div>
            </div>
          </div>
           
          <div class="inbox_chat">
            
             

            <div id="main2">
               
            </div>
             
          </div>
        </div>
         
        <div class="mesgs" id="chatbox">
          <div class="msg_history" id="chat">
           
            

                          </div>
        
          <div class="type_msg">
            <div class="input_msg_write">
               
              <button class="msg_send_btn" type="button" style=" text-align:left;" onclick="send();"><i class="fa fa-paper-plane" aria-hidden="true" ></i></button>
              <input type="text" class="write_msg" placeholder="Type a message" id="txt" />
            </div>
          </div>
        </div>
      </div>
     
     
     
    </div>
       
    </div>

         <table id="datatable" style=" width:100%; height:300px;">
      
        
    </table>
    </form>
</body>
</html>
