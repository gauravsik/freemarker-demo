<html>
<title>Freemarker Demo</title>
<body>
<h1>Hello ${userName}. Welcome to this demo application!</h1>
<h1>Account key for ${userName} is ${acctKey}</h2>
<#assign lastDigitOfAcctKey = acctKey%10>
<h1>Last digit of account key passed is ${lastDigitOfAcctKey}</h1>

<#assign isThrottlingOn = true>
<#assign activeAccountKeys = [0 , 2 , 4 , 6 , 8]>

<#if isThrottlingOn == true>
<h1>Throttling is on, showing RB page to test population.</h1>
	<#list activeAccountKeys as testAcctKey>
		<#if testAcctKey == lastDigitOfAcctKey>
			<h1>YES! you can see the RB page.</h1>
			<h1>Setting the global flag as true.</h1>
			<#global gloabalFlag=true>
			<#break>
		</#if>
	</#list>
<#else>
	<h1>Throttling is currently off at this time.</h1>
</#if>

	
</body>
</html>