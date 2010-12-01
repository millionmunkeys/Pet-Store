<cfcomponent extends="MillionMunkeys.TrafficMunkey_1_4.Application">
	<cfset this.name="PetStore" />
	<cffunction name="onRequest">
		<cfset Super.onRequest(ArgumentCollection=Arguments) />
		<cfimport prefix="" taglib="/Millionmunkeys/TrafficMunkey_1_4/" />
		<site title="Pet Store" template="PetSmart/template.cfm"><!---  wireframe.cfm --->
			<page title="Welcome" template="home.cfm" />
			<site id="Types" title="Pet Types">
				<page title="Dogs" template="dogs.cfm" />
				<page title="Cats" template="cats.cfm" />
				<page title="Fish" template="fish.cfm" />
				<page title="Birds" template="birds.cfm" />
				<page title="Monkeys" template="monkeys.cfm" />
			</site>
			<site id="Cart" title="Shopping Cart">
				<page title="Shopping Cart" template="cart.cfm">
					<link name="Checkout" url="checkout.cfm" />
				</page>
				<page title="Checkout" template="checkout.cfm" />
				<page title="Create an Account" template="profile.cfm" />
				<page title="Enter Credit Card" template="payment.cfm" />
				<page title="Confirmation" template="confirm.cfm" />
			</site>
			<site id="Account" title="My Account"><!--- roles="true" roles="false" --->
				<page title="Login" template="login.cfm">
					<link name="Create" template="profile.cfm" />
				</page>
				<page title="My Profile" template="profile.cfm" />
				<page title="Logout" template="logout.cfm" />
			</site>
		</site>
	</cffunction>
</cfcomponent>