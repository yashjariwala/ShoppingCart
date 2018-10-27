 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.outer, .inner {
    display: block;
}


.inner {
    /* specify padding, can be changed while remaining fixed width of .outer */
    padding: 10px;
    margin: 10px 0px;
    background-color: #f2f2f2;
    width:70%;
    font-family: sans-serif;;


}
.head{
  background-color:#cc3333;
   height:40px;
   width:100%;
   margin:0 0 20px 0;
  border-radius: 5px;
  font-family: Gotham;
  padding-left: 10px;
  color: white;


}
.mytext{
  vertical-align: middle;
  line-height: 40px;
}
#order{
  background-color: #cc3333;
  color:white;
  padding-left: 20px;
  padding-top: 10px;
}
.tbSum th{
  font-size: 20px;
  font-weight: bold;
  font-family: sans-serif;
  background-color:#cc3333;
  color: white;
}

.tbSum td{
  font-size: 20px;
  font-weight: bold;
}
</style>
</head>
<body>
            <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<h1>Please Select Payment option</h1>
  <div class="container">

     <form action="${pageContext.request.contextPath}/ack"  method="post">
     
         <div class="well">
             <label>Payment</label><br>
             <select name="payment">
    <option value="COD">Cash on Delivery</option>
    <option value="NetBanking">Net Banking</option>
</select>
               

  
  <div><br></div>
                <input type="text" name="cardnum" placeholder="Enter your card number" style="width:70%"><br>
                <br>
                <input type="text" name="name" placeholder="Name on the card" style="margin-bottom:10px;width:70%"><br>
                   <div>
                     <table>
                       <tr><th colspan="2">Expiry</th>
                         <th>&nbsp;&nbsp;&nbsp;&nbsp;</th>
                       <th>CVV</th></tr>
                       <tr><td colspan="2">  <input type="number" min="1" max="12" name="month" placeholder="mm" style="width:50px">
                         <input type="number" min="1" max="12" name="year" placeholder="yy" style="width:50px"></td>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td>


                </table>
                </div>
              </div><!-- inner end card number-->
              <input type="submit"  value="PROCEED" style="width:75%; font-size:20px;" class="btn btn-success">
         </form>
         </div>
          </div>
        </div>


      </div><!--end of 1st column-->

      </div><!--end of row-->
      
      <div><br></div>
    </div>
</body>

</html>