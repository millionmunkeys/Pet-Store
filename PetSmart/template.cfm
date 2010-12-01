

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!---<base href="http://adoptions.petsmart.com/" />--->
<title>PetSmart Adoptions</title>
<meta name="Description" content="PetSmart.com - Shop for all of your pet supplies for dogs, cats, birds, fish, reptiles or small pets. Get answers & expert advice for the care of your pet." />
<meta name="Keywords" content="Petsmart.com, Petsmart, Pets, pet, pet hotel, petshotel, Pets.com, pet smart, pets mart, pet stores Dog, Dogs, Cat, Cats, Fish, puppy, kitten, puppies, Pet supplies, Pet supply, Horse, Veterinarian, pet adoption, pet charity, pet training, pet grooming, dog training, grooming, vet, aquarium, pet store, bird feeder, pet adoption, dog houses, pet food, dog food, PetSmart, pet mart, pet shop, pet shops,cat food, cat litter, petssmart, fish food, cat carriers, bird cage, aquarium decorations, dog toys, pet's mart, Pet Smart.com, fish tank, pet rescue, adopt a pet, kitten, puppy, dog training, pet toy, distemper, bird, reptile, small animal, premium pet food, natural pet food, natural dog food, rabbit, hamster, guinea pig, gerbil, ferret, total lifetime care." />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Pragma" content="no-cache">
<META NAME="Author" content="PetSmart">

<script type="text/javascript" src="http://adoptions.petsmart.com/common/js/PG_PETS_home.js"></script>
<script type="text/javascript" src="http://adoptions.petsmart.com/common/js/prototype.js"></script>
<script type="text/javascript" src="http://adoptions.petsmart.com/common/js/LIB_eventObserve.js"></script>
<script type="text/javascript" src="http://adoptions.petsmart.com/common/js/DF_DFT_main.js"></script>
<script type="text/javascript" src="http://adoptions.petsmart.com/common/js/WIZ_DFT_topNav.js"></script>
<script type="text/javascript" src="http://adoptions.petsmart.com/common/js/flashobject.js"></script>
<script type="text/javascript">
	function initNav() { Wizzle.dropNav($('theNav')); }
	Element.observe(window,"load",initNav);
	window.path = "http://adoptions.petsmart.com/common/images/";
</script>
<script language="JavaScript" type="text/JavaScript">
   function openNewWindow(URLtoOpen, windowName, windowFeatures) { newWindow=window.open(URLtoOpen, windowName, windowFeatures); } 
</script>

<!-- 2010 header code -->
<script src="http://adoptions.petsmart.com/common/header2010/js/site-head-js.xml.min.js" type="text/javascript"></script>
<!-- end 2010 header code --><script language=JavaScript>




function validateZIP(zip) {
if (zip.match(/^[0-9]{5}$/)) {
  return true;
 }
else if(zip.length == 7 && zip.match(/\s/) && zip.search(/^[a-zA-Z]\d[a-zA-Z]\d[a-zA-Z]\d$/) ){
 return true;
}
 else alert("please re-enter your zipcode");return false;
}

</script>
<!-- start Tabs Scripts -->
<script type="text/javascript" src="http://adoptions.petsmart.com/adoption-center/includes/tabcontent.js"></script>
<link rel="stylesheet" type="text/css" href="http://adoptions.petsmart.com/adoption-center/includes/tabcontent.css" />
<!-- end Tabs Scripts -->

<link href="http://adoptions.petsmart.com/common/css/DF_PETS_main.css" rel="stylesheet" type="text/css" />
<link href="http://adoptions.petsmart.com/css/adoption_screen.css" rel="stylesheet" type="text/css" />

</head>

<body class="adoption-site" id="adoptions-portal">
<!-- begin header -->
<div id="headerWrapper">
	<div id="header">
		<div id="headerTop">
			<div id="logo"><a  title="PetSmart - Pet supplies and pet products for healthier, happier pets" href="http://www.petsmart.com/"><h1>SmartPets</a></div>
			<div id="search">
				<form id="headerSearch" action="http://www.petsmart.com/search/controller.jsp">
					<input type="text" name="kw" id="kw" value="search petsmart.com" />
					<input type="submit" alt="" id="searchBtn" value="Search" />
				</form>
			</div>
			<div id="utilNav">
				<ul id="links" class="horiz-nav">
					<cfoutput>
						<cfset accountLinks = Request.TrafficMunkey.get("sites").get("Account").get("pages") />
						<cfloop from="1" to="#accountLinks.getLength()#" index="i">
							<cfset page = accountLinks.get(i) />
							<cfif i eq accountLinks.getLength()>
								<cfset class = "last" />
							<cfelse>
								<cfset class = "" />
							</cfif>
							<li class="#class#"><a href="#page.get('url')#" title="#page.get('title')#">#page.get('title')#</a></li>
						</cfloop>
					</cfoutput>
					<!---
					<li><a href="https://www.petsmart.com/coreg/index.jsp?step=register" title="Sign in">Sign in</a></li>
					<li><a id="emailSignup" href="http://help.petsmart.com/subscribe/" title="email signup">Email sign-up</a></li>
					<li><a href="http://help.petsmart.com/" title="Help">Help</a></li>
					<li class="last"><a href="http://stores.petsmart.com/" title="Store Locator">Store Locator</a></li>
					--->
				</ul>
			</div>
		</div>
		<!---
		<div id="firstLevelNav">
			<!-- BEGIN CMS SLOT -->
			<div id="pet_headerInclude_nav" style="height:30px;width:855px;border:0px;overflow:hidden;">
				<ul>
					<li id="mainnav-home"><a href="http://www.petsmart.com">PetSmart.com</a></li>
					<li id="mainnav-services"><a href="http://pet-services.petsmart.com/">Services</a></li>
					<li id="mainnav-adoptions"><a href="http://adoptions.petsmart.com/">Adoptions</a></li>
                    <li id="mainnav-mypetsmart"><a href="http://www.mypetsmart.com/">myPetSmart</a></li>                   
					<li id="mainnav-petperks"><a href="http://customer-support.petsmart.com/pet-perks/">PetPerks</a></li>
					<li><a href="http://petsmart.shoplocal.com/petsmart/new_user_entry.aspx?AdRef=ecirc" style="color:#a30000">In-store Specials</a></li>                
				</ul>
			</div>
			<!-- END CMS SLOT -->			
		</div>
		--->
		<div id="topnavContainer">
			<ul id="theNav" class="horiz-nav">
				<cfoutput>
					<cfset categoryLinks = Request.TrafficMunkey.get("sites").get("Types").get("pages") />
					<cfloop from="1" to="#categoryLinks.getLength()#" index="i">
						<cfset page = categoryLinks.get(i) />
						<cfif i eq categoryLinks.getLength()>
							<cfset class = "last" />
						<cfelse>
							<cfset class = "" />
						</cfif>
						<li id="MainNav#i#"><a class="top" href="#page.get('url')#" title="#page.get('title')#">#page.get('title')#</a></li>
					</cfloop>
				</cfoutput>
				<!---
				<li id="mainNav1"><a class="top" href="http://adoptions.petsmart.com/adoption-events/index.php" title="Adoption Events" id="sn-adoption-events">Adoption Events</a></li>
				<li id="mainNav2"><a class="top" href="http://adoptions.petsmart.com/success-stories/index.php" title="Adoptions Stories" id="sn-adoption-stories">Adoptions Stories</a></li>
				<li id="mainNav3"><a class="top" href="http://adoptions.petsmart.com/adoption-process/index.php" title="How to Adopt" id="sn-adoption-howv">How to Adopt</a></li>
				<li id="mainNav4"><a class="top" href="http://adoptions.petsmart.com/partner-info/index.php" title="Adoption Partners" id="sn-adoption-partners">Adoption Partners</a></li>
				--->
			</ul>
		</div>
		<div id="cartArea">
			<cfoutput>
				<cfset cartLink = Request.TrafficMunkey.get("sites").get("Cart") />
				<a href="#cartLink.get('url')#" title="#cartLink.get('title')#" id="cart-label" class="cartLabel">VIEW CART</a>
			</cfoutput>
		</div>
	</div>
</div>
<!-- end header -->

<!-- begin content -->
<div id="centerContent">

<!-- begin breadcrumb -->
<div id="breadcrumb">
<ul>
	<cfoutput>
		<li class="bcTitle">You are here:</li>
		<cfset breadcrumbs = Request.PageMunkey.get('breadcrumbs') />
		<cfloop from="1" to="#breadcrumbs.getLength()#" index="i">
			<cfset crumb = breadcrumbs.get(i) />
			<li class="bcLink">
				<a href="#crumb.get('url')#">
					<cfif Len(crumb.get('title'))>
						#crumb.get('title')#
					<cfelse>
						Level #i#
					</cfif>
				</a>
			</li>
			<li class="bcSeparator">&##62;</li>
		</cfloop>
	</cfoutput>
	<!---
	<li class="bcTitle">You are here:</li>
	<li class="bcLink"><a href="http://www.petsmart.com">Home</a></li>
	<li class="bcSeparator">&#62;</li>
	<li class="bcLink"><a href="http://adoptions.petsmart.com/index.php">Adoptions</a> </li>
	--->
</ul>
</div>
<!-- end breadcrumb -->

<!-- begin promo banner cms include -->

<!-- end promo banner cms include -->

<div id="portal-bucket">
	<div id="left-column">&nbsp;</div>
	<div id="center-column">
		<cfoutput>#Request.PageMunkey.get('body')#</cfoutput>
	</div>
	<div id="right-column">&nbsp;</div>
</div>


<br clear="all" style="clear:both;" />

<!---
<!-- begin portal content container -->
<div id="portal-bucket">
	<div id="left-column">
		<h1>Looking to Adopt a Pet?</h1>
		<p>Enter your preferences below to find pets available for adoption at a shelter, animal welfare agency or foster network.</p>
		
                    
                    <form id="countrytabs" class="shadetabs adopt-form">
                    	<label>Search Type</label>
						<select name="" onchange="chgType(this)">
                            <option selected="selected" value="country1" rel="country1">Find a Dog</option>
                            <option value="country2" rel="country2">Find a Cat</option>
                            <option value="country3" rel="country3">Find a Shelter</option>
                    	</select>
                    </form>
					<div class="clear-floats"></div>
				<!--		<div id="country1" class="tabcontent"> -->
						<div id="country1">
							<!-- start dog search -->
							<form name="smart-pet-search" action="/adoption-center/results.php" method="post" onSubmit="return validateZIP(this.city_or_zip.value)" class="adopt-form">
    
    <table width="184" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td colspan="2">
						<label>Breed</label>
						<select name="breed_id" id="breed">
							<option selected="selected" value="">Any</option>
<option value="criteria=1081">"Gentle Giants"</option>
<option value="criteria=1063">"Mutt-Madness Surprise Mix!"</option>
<option value="criteria=1073">"Mini Mutts (Mucho Love!)"</option>
<option value="criteria=1064">"Mid-Sized Mutts"</option>
<option value="criteria=1077">"Big Mutt-hatten Sky Scrapers"</option>
<option value="super=1017">"Barrymore's Buddies"</option>
<option value="nick=1033">"Taco Bell Dog's Little Amigos"</option>
<option value="nick=1048">"Eddie & Frasier's Friends!"</option>
<option value="real=187">Affenpinscher</option>
<option value="real=1">Afghan Hound</option>
<option value="super=1015">Ain't Nothin' but a Hound Dog!</option>
<option value="real=2">Airedale Terrier</option>
<option value="real=800">Akbash</option>
<option value="real=3">Akita</option>
<option value="real=4">Alaskan Malamute</option>
<option value="criteria=1078">"Almost a Horse"</option>
<option value="real=361">American Bulldog</option>
<option value="real=5">American Eskimo Dog</option>
<option value="real=1167">American Hairless Terrier</option>
<option value="real=801">American Pit Bull Terrier</option>
<option value="nick=1082">American Staffordshire Terrier</option>
<option value="nick=1030">American Water Spaniel</option>
<option value="real=7">Anatolian Shepherd</option>
<option value="real=8">Australian Cattle Dog</option>
<option value="real=9">Australian Kelpie</option>
<option value="real=10">Australian Shepherd</option>
<option value="real=802">Australian Terrier</option>
<option value="real=12">Basenji</option>
<option value="nick=1053">Basset Griffon Vendeen</option>
<option value="real=13">Basset Hound</option>
<option value="real=14">Beagle</option>
<option value="real=15">Bearded Collie</option>
<option value="real=803">Beauceron</option>
<option value="real=189">Bedlington Terrier</option>
<option value="real=1168">Belgian Laekenois</option>
<option value="real=191">Belgian Malinois</option>
<option value="real=16">Belgian Shepherd</option>
<option value="real=192">Belgian Tervuren</option>
<option value="real=17">Bernese Mountain Dog</option>
<option value="real=18">Bichon Frise</option>
<option value="real=804">Black Mouth Cur</option>
<option value="real=19">Black and Tan Coonhound</option>
<option value="real=20">Bloodhound</option>
<option value="nick=1027">Blue Heeler</option>
<option value="real=1368">Blue Lacy/Texas Lacy</option>
<option value="real=193">Bluetick Coonhound</option>
<option value="nick=1041">Bobtail</option>
<option value="real=1165">Bolognese</option>
<option value="real=21">Border Collie</option>
<option value="real=194">Border Terrier</option>
<option value="real=22">Borzoi</option>
<option value="real=23">Boston Terrier</option>
<option value="real=24">Bouvier des Flandres</option>
<option value="real=25">Boxer</option>
<option value="real=601">Boykin Spaniel</option>
<option value="real=26">Briard</option>
<option value="real=27">Brittany</option>
<option value="real=195">Brussels Griffon</option>
<option value="real=28">Bull Terrier</option>
<option value="nick=1039">Bulldog</option>
<option value="real=30">Bullmastiff</option>
<option value="real=31">Cairn Terrier</option>
<option value="real=381">Canaan Dog</option>
<option value="nick=1194">Canary Dog</option>
<option value="real=461">Cane Corso</option>
<option value="nick=1036">Cardigan Welsh Corgi</option>
<option value="real=805">Carolina Dog</option>
<option value="criteria=1074">"Carry-On Size Cuties"</option>
<option value="real=33">Catahoula Leopard Dog</option>
<option value="nick=1028">Cattle Dog</option>
<option value="real=34">Cavalier King Charles Spaniel</option>
<option value="real=35">Chesapeake Bay Retriever</option>
<option value="real=36">Chihuahua</option>
<option value="real=37">Chinese Crested</option>
<option value="real=38">Chow Chow</option>
<option value="real=196">Clumber Spaniel</option>
<option value="real=39">Cockapoo</option>
<option value="real=40">Cocker Spaniel</option>
<option value="real=41">Collie</option>
<option value="real=42">Coonhound</option>
<option value="super=1014">Coonhounds (All Types)</option>
<option value="real=230">Corgi</option>
<option value="real=521">Coton de Tulear</option>
<option value="real=1169">Curly-Coated Retriever</option>
<option value="criteria=1070">"Cute Canine Crosses"</option>
<option value="real=44">Dachshund</option>
<option value="real=45">Dalmatian</option>
<option value="real=199">Dandie Dinmont Terrier</option>
<option value="nick=1060">Deerhound</option>
<option value="real=46">Doberman Pinscher</option>
<option value="real=621">Dogo Argentino</option>
<option value="real=242">Dogue de Bordeaux</option>
<option value="real=47">Dutch Shepherd</option>
<option value="real=1186">English (Redtick) Coonhound</option>
<option value="real=29">English Bulldog</option>
<option value="nick=1052">English Mastiff</option>
<option value="nick=1173">English Pointer</option>
<option value="real=49">English Setter</option>
<option value="nick=1042">English Sheepdog</option>
<option value="real=641">English Shepherd</option>
<option value="real=51">English Springer Spaniel</option>
<option value="real=52">English Toy Spaniel</option>
<option value="real=808">Entlebucher</option>
<option value="nick=1020">Eskimo Dog</option>
<option value="nick=1019">Eskimo Spitz</option>
<option value="criteria=1067">"Fantastic Fidos"</option>
<option value="real=310">Feist</option>
<option value="real=201">Field Spaniel</option>
<option value="real=810">Fila Brasileiro</option>
<option value="real=811">Finnish Lapphund</option>
<option value="real=54">Finnish Spitz</option>
<option value="real=202">Flat-Coated Retriever</option>
<option value="real=812">Fox Terrier (Smooth)</option>
<option value="real=813">Fox Terrier (Toy)</option>
<option value="real=55">Fox Terrier (Wirehaired)</option>
<option value="super=1005">Fox Terriers (All Types)</option>
<option value="real=56">Foxhound</option>
<option value="real=203">French Bulldog</option>
<option value="nick=1038">French Mastiff</option>
<option value="super=992">"Funny-Faced Breeds"</option>
<option value="real=814">German Pinscher</option>
<option value="real=57">German Shepherd Dog</option>
<option value="real=58">German Shorthaired Pointer</option>
<option value="real=204">German Wirehaired Pointer</option>
<option value="nick=1171">Giant Schnauzer</option>
<option value="real=815">Glen of Imaal Terrier</option>
<option value="super=1016">"Go Fetch! Retrievers!"</option>
<option value="real=60">Golden Retriever</option>
<option value="real=61">Gordon Setter</option>
<option value="real=62">Great Dane</option>
<option value="real=63">Great Pyrenees</option>
<option value="real=205">Greater Swiss Mountain Dog</option>
<option value="real=64">Greyhound</option>
<option value="real=661">Halden Hound (Haldenstrover)</option>
<option value="real=206">Harrier</option>
<option value="real=501">Havanese</option>
<option value="super=1006">Hounds (All Types)</option>
<option value="super=1008">Hounds (Scent Hounds)</option>
<option value="super=1007">Hounds (Sight Hounds)</option>
<option value="real=816">Hovawart</option>
<option value="nick=1195">Hungarian Puli</option>
<option value="nick=1196">Hungarian Water Dog</option>
<option value="real=817">Husky</option>
<option value="real=281">Ibizan Hound</option>
<option value="real=67">Irish Setter</option>
<option value="real=207">Irish Terrier</option>
<option value="real=208">Irish Water Spaniel</option>
<option value="real=68">Irish Wolfhound</option>
<option value="real=69">Italian Greyhound</option>
<option value="real=818">Italian Spinone</option>
<option value="real=70">Jack Russell Terrier</option>
<option value="real=71">Japanese Chin</option>
<option value="real=72">Jindo</option>
<option value="criteria=1066">"Just Right (Not too big or small)"</option>
<option value="real=819">Kai Dog</option>
<option value="real=820">Karelian Bear Dog</option>
<option value="real=73">Keeshond</option>
<option value="real=209">Kerry Blue Terrier</option>
<option value="nick=1032">King Charles Spaniel</option>
<option value="real=821">Kishu</option>
<option value="real=210">Komondor</option>
<option value="real=74">Kuvasz</option>
<option value="real=822">Kyi Leo</option>
<option value="real=1170">Labradoodle</option>
<option value="real=823">Labrador Retriever</option>
<option value="real=211">Lakeland Terrier</option>
<option value="real=826">Lancashire Heeler</option>
<option value="nick=1034">"Lassie's Friends!"</option>
<option value="real=827">Leonberger</option>
<option value="real=76">Lhasa Apso</option>
<option value="super=991">"Little Fluffy Powder-Puffs of Love"</option>
<option value="criteria=1076">"Little Lovers"</option>
<option value="real=1187">Löwchen</option>
<option value="real=77">Maltese</option>
<option value="real=78">Manchester Terrier</option>
<option value="real=828">Maremma Sheepdog</option>
<option value="criteria=1065">"Marvelous Mixes"</option>
<option value="real=200">Mastiff</option>
<option value="super=1001">Mastiffs (All Types)</option>
<option value="nick=1061">Mexican Hairless</option>
<option value="real=80">Miniature Pinscher</option>
<option value="nick=1054">Miniature Poodle</option>
<option value="nick=1058">Miniature Schnauzer</option>
<option value="real=829">Mountain Cur</option>
<option value="real=830">Munsterlander</option>
<option value="nick=1026">"Muscle-Bound Momma's Boys (& Girls!)"</option>
<option value="criteria=1075">"Muttchkins"</option>
<option value="criteria=1072">"Mutts are Great, Don't Discriminate!"</option>
<option value="real=83">Neapolitan Mastiff</option>
<option value="real=84">Newfoundland</option>
<option value="real=214">Norfolk Terrier</option>
<option value="real=831">Norwegian Buhund</option>
<option value="real=85">Norwegian Elkhound</option>
<option value="real=215">Norwich Terrier</option>
<option value="real=832">Nova Scotia Duck-Tolling Retriever</option>
<option value="real=302">Old English Sheepdog</option>
<option value="real=87">Otterhound</option>
<option value="real=88">Papillon</option>
<option value="nick=1172">Parson Russell Terrier</option>
<option value="real=833">Patterdale Terrier (Fell Terrier)</option>
<option value="real=89">Pekingese</option>
<option value="nick=1035">Pembroke Welsh Corgi</option>
<option value="real=216">Petit Basset Griffon Vendeen</option>
<option value="real=90">Pharaoh Hound</option>
<option value="nick=1021">Pit Bull Terrier</option>
<option value="real=581">Plott Hound</option>
<option value="real=834">Podengo Portugueso</option>
<option value="real=92">Pointer</option>
<option value="real=1166">Polish Lowland Sheepdog</option>
<option value="real=93">Pomeranian</option>
<option value="criteria=1069">"Poochy Pals"</option>
<option value="real=213">Poodle (Miniature)</option>
<option value="real=94">Poodle (Standard)</option>
<option value="real=226">Poodle (Toy or Tea Cup)</option>
<option value="super=1010">Poodles (All Types)</option>
<option value="real=95">Portuguese Water Dog</option>
<option value="real=1188">Presa Canario</option>
<option value="real=96">Pug</option>
<option value="real=1189">Puli</option>
<option value="real=835">Pumi</option>
<option value="criteria=1068">"Pup-pourri"</option>
<option value="real=218">Rat Terrier</option>
<option value="real=664">Redbone Coonhound</option>
<option value="nick=1193">Redtick Coonhound</option>
<option value="super=1011">Retrievers (All Types)</option>
<option value="real=98">Rhodesian Ridgeback</option>
<option value="real=99">Rottweiler</option>
<option value="nick=1029">Russian Wolfhound</option>
<option value="real=101">Saluki</option>
<option value="real=102">Samoyed</option>
<option value="real=662">Schiller Hound</option>
<option value="real=103">Schipperke</option>
<option value="real=836">Schnauzer (Giant)</option>
<option value="real=837">Schnauzer (Miniature)</option>
<option value="real=104">Schnauzer (Standard)</option>
<option value="super=1013">Schnauzers (All Types)</option>
<option value="real=105">Scottie, Scottish Terrier</option>
<option value="real=219">Scottish Deerhound</option>
<option value="real=220">Sealyham Terrier</option>
<option value="super=1012">Setters (All Types)</option>
<option value="real=107">Shar Pei</option>
<option value="super=994">Sheep & Herding Dogs</option>
<option value="real=108">Sheltie, Shetland Sheepdog</option>
<option value="super=1002">Shepherds (All Types)</option>
<option value="real=110">Shiba Inu</option>
<option value="real=111">Shih Tzu</option>
<option value="nick=1084">Siberian Husky</option>
<option value="real=113">Silky Terrier</option>
<option value="real=221">Skye Terrier</option>
<option value="real=841">Sloughi</option>
<option value="nick=1044">Smooth Fox Terrier</option>
<option value="super=993">Snow Dogs (Husky/Fluffy Types)</option>
<option value="super=998">Spaniels (All Types)</option>
<option value="super=1000">Spaniels (Medium)</option>
<option value="super=999">Spaniels (Small)</option>
<option value="super=995">Spitz Types (Large)</option>
<option value="super=996">Spitz Types (Medium)</option>
<option value="super=997">Spitz Types (Small)</option>
<option value="nick=1043">Springer Spaniel</option>
<option value="real=100">St. Bernard</option>
<option value="nick=1022">Staffordshire Bull Terrier</option>
<option value="nick=1055">Standard Poodle</option>
<option value="nick=1059">Standard Schnauzer</option>
<option value="nick=1024">"Strong but Sweet"</option>
<option value="criteria=1080">"Super-Sized Sweeties"</option>
<option value="real=222">Sussex Spaniel</option>
<option value="real=846">Swedish Vallhund</option>
<option value="nick=1057">Tea Cup Poodle</option>
<option value="super=1004">Terriers (Medium)</option>
<option value="super=1003">Terriers (Small)</option>
<option value="real=561">Thai Ridgeback</option>
<option value="real=224">Tibetan Mastiff</option>
<option value="real=225">Tibetan Spaniel</option>
<option value="real=118">Tibetan Terrier</option>
<option value="criteria=1079">"Tons of Love"</option>
<option value="real=848">Tosa Inu</option>
<option value="nick=1031">"Toto's Little pals from Oz!"</option>
<option value="nick=1025">"Tough & Tender"</option>
<option value="nick=1046">Toy Fox Terrier</option>
<option value="nick=1056">Toy Poodle</option>
<option value="real=119">Treeing Walker Coonhound</option>
<option value="real=120">Vizsla</option>
<option value="real=121">Weimaraner</option>
<option value="nick=1037">Welsh Corgi</option>
<option value="real=849">Welsh Springer Spaniel</option>
<option value="real=227">Welsh Terrier</option>
<option value="real=123">Westie, West Highland White Terrier</option>
<option value="real=124">Wheaten Terrier</option>
<option value="real=125">Whippet</option>
<option value="nick=1045">Wirehaired Fox Terrier</option>
<option value="real=127">Wirehaired Pointing Griffon</option>
<option value="real=212">Xoloitzcuintle/Mexican Hairless</option>
<option value="real=244">Yorkie, Yorkshire Terrier</option>
<option value="criteria=1071">"31 Flavors Mixes"</option>
						</select>
					</td>
				</tr>
				<tr>
					<!--<td>
						<label>Age</label>
						<select name="age" id="age">
							<option selected="selected" value="">Any</option>
<option value="young">Young</option>
<option value="adult">Adult</option>
<option value="senior">Senior</option>
<option value="puppy">Puppy</option>
						</select>
					</td>
					<td>
						<label>Sex</label>
						<select name="sex" id="sex">
							<option selected="selected" value="">Any</option>
<option value="m">Male</option>
<option value="f">Female</option>
						</select> 
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<label>Size</label>
						<select name="pet_size_range_id" id="size">
							<option selected="selected" value="">Any</option>
<option value="1">Small 25 lbs (11 kg) or less</option>
<option value="2">Med. 26-60 lbs (12-27 kg)</option>
<option value="3">Large 61-100 lbs (28-45 kg)</option>
<option value="4">X-Large 101 lbs (46 kg) or more</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<label>Colors</label>
						<select name="color_id" id="color">
							<option selected="selected" value="">Any</option>
<option value="152">Black</option>
<option value="153">Brindle</option>
<option value="154">Brown/Chocolate</option>
<option value="155">Gray/Blue/Silver/Salt & Pepper</option>
<option value="156">Merle</option>
<option value="157">Red/Golden/Orange/Chestnut</option>
<option value="158">Silver & Tan (Yorkie colors)</option>
<option value="159">Tan/Yellow/Fawn</option>
<option value="160">Tricolor (Tan/Brown & Black & White)</option>
<option value="161">White</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<label>Distance</label>
						<select name="geo_range" id="geo_range">
							<option selected="selected" value="35|55">Less than 35 miles (55 km)</option>
<option value="50|80">Less than 50 miles (80 km)</option>
<option value="75|120">Less than 75 miles (120 km)</option>
<option value="100|160">Less than 100 miles (160 km)</option>
<option value="250|400">Less than 250 miles (400 km)</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<label>Zip Code</label>
    					<input type="text" size="6" name="city_or_zip" id="zip" />
					</td>-->
				</tr>
				<tr>
					<td><a href="http://www.adoptapet.com/" target="_blank"><img src="http://adoptions.petsmart.com/images/portal/logo-adoptapet.gif" width="110" alt="Powered by AdoptaPet.com" /></a></td>
					<td align="right">
						<input type="image" src="http://adoptions.petsmart.com/images/portal/btn-go.jpg" height="18" width="52" border="0" alt="Go" id="go">
					</td>
				</tr>
			</table>

   <select name="species" style="display:none;">
   <option value="dog"></option>	
   </select>
</form>
							<!-- end dog search -->
						</div>                    
				<!--		<div id="country2" class="tabcontent"> -->
						<div id="country2" style="display: none;">
							<!-- start cat search -->
							<form name="smart-pet-search" action="/adoption-center/results.php" method="post" onSubmit="return validateZIP(this.city_or_zip.value)" class="adopt-form">
    
    	
	<table width="184" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td colspan="2">
						<label>Breed</label>
						<select name="breed_id" id="breed">
							<option selected="selected" value="">Any</option>
<option value="">Housecat / Domestic Kitty</option>
<option value="real=967">Abyssinian</option>
<option value="real=1119">American Bobtail</option>
<option value="real=1120">American Curl</option>
<option value="real=968">American Shorthair</option>
<option value="real=1122">American Wirehair</option>
<option value="real=969">Balinese</option>
<option value="real=970">Bengal</option>
<option value="real=971">Birman</option>
<option value="real=972">Bombay</option>
<option value="real=973">British Shorthair</option>
<option value="real=974">Burmese</option>
<option value="criteria=1198">Calico</option>
<option value="real=1123">Chartreux</option>
<option value="real=1124">Colorpoint Shorthair</option>
<option value="real=1125">Cornish Rex</option>
<option value="real=1139">Cymric</option>
<option value="real=1126">Devon Rex</option>
<option value="real=1127">Domestic Longhair</option>
<option value="real=1128">Domestic Mediumhair</option>
<option value="real=1129">Domestic Shorthair</option>
<option value="real=1130">Egyptian Mau</option>
<option value="real=1131">European Burmese</option>
<option value="real=1132">Exotic</option>
<option value="real=1133">Havana Brown</option>
<option value="nick=1197">Hemingway/Polydactyl</option>
<option value="real=976">Himalayan</option>
<option value="real=1134">Japanese Bobtail</option>
<option value="real=1135">Javanese</option>
<option value="real=1136">Korat</option>
<option value="real=1137">LaPerm</option>
<option value="real=977">Maine coon</option>
<option value="real=1138">Manx</option>
<option value="real=1191">Munchkin</option>
<option value="real=979">Norwegian Forest Cat</option>
<option value="real=980">Ocicat</option>
<option value="real=1140">Oriental</option>
<option value="real=981">Persian</option>
<option value="real=1192">Polydactyl/Hemingway</option>
<option value="real=1141">RagaMuffin</option>
<option value="real=982">Ragdoll</option>
<option value="real=983">Russian Blue</option>
<option value="real=1142">Scottish Fold</option>
<option value="real=1143">Selkirk Rex</option>
<option value="real=984">Siamese</option>
<option value="real=1151">Siberian</option>
<option value="real=1145">Singapura</option>
<option value="real=985">Snowshoe</option>
<option value="real=1146">Somali</option>
<option value="real=1147">Sphynx</option>
<option value="real=1148">Tonkinese</option>
<option value="real=1149">Turkish Angora</option>
<option value="real=986">Turkish Van</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<label>Age</label>
						<select name="age" id="age">
							<option selected="selected" value="">Any</option>
<option value="young">Young</option>
<option value="adult">Adult</option>
<option value="senior">Senior</option>
<option value="kitten">Kitten</option>
						</select>
					</td>
					<td>
						<label>Sex</label>
						<select name="sex" id="sex">
							<option selected="selected" value="">Any</option>
<option value="m">Male</option>
<option value="f">Female</option>
						</select> 
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<label>Hair</label>
						<select name="pet_size_range_id" id="hair">
							<option selected="selected" value="">Any</option>
<option value="short">Short</option>
<option value="medium">Medium</option>
<option value="long">Long</option>
 
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<label>Colors</label>
						<select name="color_id" id="color">
							<option selected="selected" value="">Any</option>
<option value="46">Black</option>
<option value="47">Black & White or Tuxedo</option>
<option value="49">Brown Tabby</option>
<option value="48">Brown or Chocolate</option>
<option value="50">Calico or Dilute Calico</option>
<option value="51">Cream or Ivory</option>
<option value="52">Gray or Blue</option>
<option value="53">Gray, Blue or Silver Tabby</option>
<option value="54">Orange or Red</option>
<option value="55">Orange or Red Tabby</option>
<option value="56">Spotted Tabby/Leopard Spotted</option>
<option value="61">Tabby</option>
<option value="57">Tan or Fawn</option>
<option value="58">Tan or Fawn Tabby</option>
<option value="163">Tiger Striped</option>
<option value="59">Tortoiseshell</option>
<option value="60">White</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<label>Distance</label>
						<select name="geo_range" id="geo_range">
							<option selected="selected" value="35|55">Less than 35 miles (55 km)</option>
<option value="50|80">Less than 50 miles (80 km)</option>
<option value="75|120">Less than 75 miles (120 km)</option>
<option value="100|160">Less than 100 miles (160 km)</option>
<option value="250|400">Less than 250 miles (400 km)</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<label>Zip Code</label>
    					<input type="text" size="6" name="city_or_zip" id="zip" />
					</td>
				</tr>
				<tr>
					<td><a href="http://www.adoptapet.com/" target="_blank"><img src="http://adoptions.petsmart.com/images/portal/logo-adoptapet.gif" width="110" alt="Powered by AdoptaPet.com" /></a></td>
					<td align="right">
						<input type="image" src="http://adoptions.petsmart.com/images/portal/btn-go.jpg" height="18" width="52" border="0" alt="Go" id="go">
					</td>
				</tr>
			</table>

   <select name="species" style="display:none;">
   <option value="cat"></option>	
   </select>
</form>

							<!-- end cat search -->
						</div>                    
				<!--		<div id="country3" class="tabcontent">  -->
						<div id="country3" style="display: none;">
						<!-- start shelter search -->
						<form name="smart-pet-search" action="/adoption-center/shelter-results.php" method="post" onSubmit="return validateZIP(this.city_or_zip.value)" class="adopt-form">
    
		<table width="184" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td colspan="2">
						<label>Zip Code:</label>
      					<input type="text" size="6" name="city_or_zip" id="zip" /> 
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<label>Distance:</label>
						<select name="geo_range" id="geo_range">
							<option value="35">Less than 35 miles (55 km)</option>
							<option value="50">Less than 50 miles (80 km </option>
							<option value="75">Less than 75 miles (120 km)</option>
							<option value="100">Less than 100 miles (160 km)</option>
							<option value="250">Less than 250 miles (400 km)</option>
						</select>
					</td>
				</tr>
                <tr>
					<td><a href="http://www.adoptapet.com/" target="_blank"><img src="http://adoptions.petsmart.com/images/portal/logo-adoptapet.gif" width="110" alt="Powered by AdoptaPet.com" /></a></td>
					<td align="right">
						<input type="image" src="http://adoptions.petsmart.com/images/portal/btn-go.jpg" height="18" width="52" border="0" alt="Go" id="go">
					</td>
				</tr>
			</table>
 
</form>
						<!-- end shelter search -->
						</div>			
					
					<script type="text/javascript">				
   					var countries=new ddtabcontent("countrytabs")
   					countries.setpersist(true)
   					countries.setselectedClassTarget("link") //"link" or "linkparent"
   					countries.init()									

						document.getElementById('country1').style.display = 'none';
						document.getElementById('country2').style.display = 'none';
						document.getElementById('country3').style.display = 'none';

					function chgType(ele)
					   {
						document.getElementById('country1').style.display = 'none';
						document.getElementById('country2').style.display = 'none';
						document.getElementById('country3').style.display = 'none';
						selectedValue = ele.options[ele.selectedIndex].value;
						switch (selectedValue) 
						   {
                     case "country1":
								document.getElementById('country1').style.display = 'block';
								break;
                     case "country2":
								document.getElementById('country2').style.display = 'block';
                        break;
                     case "country3":
								document.getElementById('country3').style.display = 'block';
                        break;
						   }
						}
					</script>
			 <!-- end NEW TAB FEATURE -->	</div>
	
	<div id="center-column">
		<h1>Have you added a new pet to the family?</h1>
		<a href="http://www.petsmart.com/family/index.jsp?categoryId=2767079&lmdn=Dog&f=Taxonomy%2FPET%2F2767079&fbc=1&fbn=Taxonomy%7CNew+Dog+Center" title="Shop Dog Products"><img src="http://adoptions.petsmart.com/images/portal/img-shop-dog.jpg" width="184" height="81" alt="Shop now" /></a>
		<a href="http://www.petsmart.com/family/index.jsp?categoryId=2768982&lmdn=Cat&f=Taxonomy%2FPET%2F2768982&fbc=1&fbn=Taxonomy%7CNew+Cat+Center" title="Shop Cat Products"><img src="http://adoptions.petsmart.com/images/portal/img-shop-cat.jpg" width="184" height="81" alt="Shop now" /></a>
		<a href="http://www.mypetsmart.com/" title="Learn more at myPetSmart.com"><img src="http://adoptions.petsmart.com/images/portal/img-mypetsmartcom.jpg" width="390" height="283" alt="Get started with this guide to raising a healthy, happy pet" /></a>
	</div>
	
	<div id="right-column">
		<div id="charities-bucket">
			<p>Lives saved as of November 18, 2010. </p>
			<h2>4,332,799</h2>
			<p>PetSmart Charities&reg;</p>
			<a href="http://adoptions.petsmart.com/adoption-process/index.php"><img src="http://adoptions.petsmart.com/images/portal/btn-learnmore.jpg" width="92" height="18" alt="Learn more" /></a>
		</div>
		<h1>Pet Services</h1>
		<ul id="services-btns">
			<li id="btn-vet"><a href="http://www.banfield.net/new-pet" title="Banfield Veterinary Services">Banfield Veterinary Services</a></li>
			<li id="btn-grooming"><a href="http://grooming.petsmart.com/" title="Grooming">Grooming</a></li>
			<li id="btn-training"><a href="http://training.petsmart.com/" title="Training">Training</a></li>
			<li id="btn-petshotel"><a href="http://petshotel.petsmart.com/" title="PetSmart&reg; PetsHotel&reg;">PetSmart&reg; PetsHotel&reg;</a></li>
			<li id="btn-ddc"><a href="http://doggiedaycamp.petsmart.com/" title="Doggie Day Camp">Doggie Day Camp</a></li>
		</ul>
	</div>
	
	<div class="clear-floats"></div>
	<!---
	<div id="np-resources">
		<h2>New Pet Resources</h2>
		<img src="http://adoptions.petsmart.com/images/portal/tile-resource1.jpg" width="333" height="195" alt="ProPlan" />
		<a href="http://www.petsmartcharities.org/"><img src="http://adoptions.petsmart.com/images/portal/tile-resource2.jpg" width="319" height="195" alt="PetSmart Charities&reg;" /></a>
		<a href="http://customer-support.petsmart.com/pet-perks/"><img src="http://adoptions.petsmart.com/images/portal/tile-resource3.jpg" width="292" height="195" alt="PetSmart&reg; PetPerks&reg;" /></a>
		<div class="clear-floats"></div>
	</div>
	--->
</div>
<!-- end portal content container -->
--->

<!---
<!-- begin portal footer -->
<div id="portal-footer">
	<p><strong>Adoption Links:</strong>&nbsp;&nbsp;&nbsp;
	<a href="http://adoptions.petsmart.com/about-us/index.php" title="About Us">About Us</a>&nbsp;&nbsp;&nbsp;
	<a href="http://adoptions.petsmart.com/are-you-ready/index.php" title="Are You Ready">Are You Ready</a>&nbsp;&nbsp;&nbsp;
	<a href="http://adoptions.petsmart.com/adoption-programs/index.php" title="Adoption Programs">Adoption Programs</a>&nbsp;&nbsp;&nbsp;
	<a href="http://adoptions.petsmart.com/new-pet-know-how/index.php" title="New Pet Know How">New Pet Know How</a>&nbsp;&nbsp;&nbsp;
	<a href="http://www.petsmartcharities.org/" title="Help Homeless Pets">Help Homeless Pets</a></p>
	<p><strong>Services:</strong>&nbsp;&nbsp;&nbsp;
	<a href="http://www.banfield.net/new-pet" title="Vet Services">Vet Services</a>&nbsp;&nbsp;&nbsp;
	<a href="http://grooming.petsmart.com/" title="Grooming">Grooming</a>&nbsp;&nbsp;&nbsp;
	<a href="http://training.petsmart.com/" title="Training">Training</a>&nbsp;&nbsp;&nbsp;
	<a href="http://petshotel.petsmart.com/" title="PetsHotel">PetsHotel</a>&nbsp;&nbsp;&nbsp;
	<a href="http://doggiedaycamp.petsmart.com/" title="Doggie Day Camp">Doggie Day Camp</a></p>
</div>
<!-- end portal footer -->
</div>
<!-- end content -->

<!-- begin footer -->
<script type="text/javascript">
function checklength(val)
{
	if(val.length == 0) return false;
	for(var j=val.length;j > 0;j--)
	{
		if(val.charAt(j-1) != ' ')
		{
			return true;
		}
	}
	return false;
}

function emailCheck(email)
{
    if(email != null)
    {
        if(email.match("\\w+@\\w+\\.\\w+") == null)
 	{
    	  return false;
 	}
    }
   	return true;
}					

function valForm(frm)
{
	if(!emailCheck(frm.email.value))
	{
		alert("Please enter a valid email address.");
		if(!document.layers) frm.email.style.backgroundColor='yellow';
		frm.email.focus();
		return false;
	}
	return true;
}

function doEmailSignup(frm)
{
    if(valForm(frm))
    {
        var email = frm.email.value;
        var url = "http://t.4at1.com/pet1113/signup.html?email=" + email
        window.open(url, "email", "width=480,height=500,top=0,left=0,resizable=yes,scrollbars=no");
    }
    return false;
}
</script>

<div id="footerWrapper">
	<div id="footer">
		<div id="ftrLeft">
			<div class="container">
				<div class="white bold">PetSmart Information:</div>
				<ul style="margin: 0pt; padding: 0pt;">
					<li class="first"><a href="http://phx.corporate-ir.net/phoenix.zhtml?c=93506&p=irol-homeprofile" title="About Us">About Us</a></li>
					<li><a href="http://www.petsmart.com/sitemap/map.jsp" title="Site Map">Site Map</a></li>
					<li><a href="http://help.petsmart.com/contact-us/" title="Contact Us">Contact Us</a></li>
					<li><a href="http://stores.petsmart.com/" title="Store Locator">Store Locator</a></li>
					<li><a href="http://affiliates.petsmart.com" title="Affiliate Program">Affiliate Program</a></li>
					<li><a href="http://careers.petsmart.com/" title="Careers">Careers</a></li>
					<li><a href="http://pressroom.petsmart.com" title="News Room">News Room</a></li><br />
                    <li><a href="http://reviews.petsmart.com" title="Product Reviews">Product Reviews</a></li>
				</ul>
				<div class="white bold marginTop15">PetSmart Services:</div>
				<ul>
					<li class="first"><a href="http://petshotel.petsmart.com" title="PetsHotel Pet Boarding">PetsHotel</a></li>
					<li><a href="http://doggiedaycamp.petsmart.com" title="Doggie Day Camp">Doggie Day Camp</a></li>
					<li><a href="http://grooming.petsmart.com" title="Pet Grooming">Grooming</a></li>
					<li><a href="http://training.petsmart.com" title="Pet Training">Training</a></li>
					<li><a href="http://adoptions.petsmart.com" title="Pet Adoption Services">Adoptions</a></li>
					<li><a href="http://www.petsmartcharities.org" title="PetSmart Charities">Charities</a></li>
					<li><a href="http://banfield.petsmart.com" title="Banfield Veterinary Services">Banfield  Veterinary Services</a></li>
				</ul>
			</div>
		</div>
		<div id="ftrMiddle">
			<a href="http://customer-support.petsmart.com/pet-perks/?&banner_id=PetSepperks01102008footer"><img src="http://includes.petsmart.com/common/images/petperkscard.gif" alt="Not a PetSmart&reg; PetPerks&reg; member?" border="0"/></a>
		</div>
		<div id="ftrRight"><a href="http://www.petsmartcharities.org/"><IMG SRC="http://includes.petsmart.com/common/images/oas_footer_charitiesv2.gif" border="0" width="175" height="105" /></a></div>
		<div class="clear"></div>
	</div>

</div>
--->

<div id="footerWrapper">
	<div id="footer">&nbsp;</div>
</div>
<div id="copyright" class="copyright">

	&copy; &nbsp;1999-2010 PetSmart Store Support Group, Inc. All Rights Reserved.<br>
	By using this Website, you agree to our <a href="http://www.petsmart.com/helpdesk/index.jsp?display=safety&subdisplay=terms">Conditions of Use</a>, <a href="http://www.petsmart.com/helpdesk/index.jsp?display=safety&subdisplay=legal">Legal Notices</a>, and <a href="http://www.petsmart.com/helpdesk/index.jsp?display=safety&subdisplay=privacy">Privacy Policy</a>.

</div>

<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-2102920-9");
pageTracker._setDomainName("petsmart.com");
pageTracker._initData();
pageTracker._trackPageview();
</script>

</div>

<p>&nbsp;</p>

<cfinclude template="../wireframe.cfm">
</body>
</html>
