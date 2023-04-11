<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    height: 100vh;
    background: #066acd;
}
.container{
    width: 40%;
    top: 50%;
    left: 50%;
    background: white;
    border-radius: 10px;
    min-width: 450px;
    position: absolute;
    min-height: 100px;
    transform: translate(-50%,-50%);
}
#newtask{
    position: relative;
    padding: 30px 20px;
}
#newtask input{
    width: 75%;
    height: 45px;
    padding: 12px;
    color: #111111;
    font-weight: 500;
    position: relative;
    border-radius: 5px;
    font-family: 'Poppins',sans-serif;
    font-size: 15px;
    border: 2px solid #d1d3d4;
}

#newtask input:focus{
    outline: none;
    border-color: #0d75ec;
}
#newtask button{
    position: relative;
    float: right;
    font-weight: 500;
    font-size: 16px;
    background-color: #0d75ec;
    border: none;
    color: #ffffff;
    cursor: pointer;
    outline: none;
    width: 20%;
    height: 45px;
    border-radius: 5px;
    font-family: 'Poppins',sans-serif;
}
#tasks{
    border-radius: 10px;
    width: 100%;
    position: relative;
    background-color: #ffffff;
    padding: 30px 20px;
    margin-top: 10px;
}

.task{
    border-radius: 5px;
    align-items: center;
    justify-content: space-between;
    border: 1px solid #939697;
    cursor: pointer;
    background-color: #c5e1e6;
    height: 50px;
    margin-bottom: 8px;
    padding: 5px 10px;
    display: flex;
}
.task span{
    font-family: 'Poppins',sans-serif;
    font-size: 15px;
    font-weight: 400;
}
.task button{
    background-color: #6583e5;
    color: #ffffff;
    border: none;
    cursor: pointer;
    outline: none;
    height: 100%;
    width: 40px;
    border-radius: 5px;
}


</style>
</head>
<body>
<!-- 	<h1>Simple Form Demo</h1>
 -->	
	<div class="container">
    <div id="newtask">
        <input type="text" placeholder="Add Tasks">
        <button id="push">Add</button>
    </div>
    <div id="tasks"></div>
</div>

<!-- 	<form name="myForm" action="results.jsp" method="post">

		<table>
			<tbody>

				<tr>
					<td>First Name:</td>
					<td><input type="text" name="first" value="" size="50" /></td>
					<td></td>
				</tr>

				<tr>
					<td>Last Name:</td>
					<td><input type="text" name="last" value="" size="50" /></td>
					<td></td>
				</tr>

				<tr>
					<td>Email Address:</td>
					<td><input type="text" name="email" value="" size="50" /></td>
					<td></td>
				</tr>


				<tr>
					<td>Gender</td>
					<td><input type="radio" name="gender" value="Male" /> Male <input
						type="radio" name="gender" value="Female" /> Female</td>
				</tr>


				<tr>
					<td>Where were you born:</td>
					<td><select name="state">
							<option value=" ">Choose a state...</option>
							<option value="IA">Iowa</option>
							<option value="IL">Illinois</option>
							<option value="FL">Florida</option>
					</select></td>

				</tr>

			</tbody>
		</table>
		<input type="reset" value="clear" name="clear" /> <input
			type="submit" value="Submut" name="submit" />

	</form> -->

</body>
</html> 