<?php

// $Id$

$title = "Conall's Curriculum Vitae";

include($_SERVER["SITE_ROOT"]."/include/php/xhtmlheader.php");


?>

<body>

<div id="banner">
<h1><a href="http://cv.conall.net/" accesskey="1">Conall's Curriculum Vitae</a></h1>
<span class="description">
My Curriculum Vitae, available in numerous formats
for printing or online viewing
</span>
</div>

<div id="content">

<div class="blog">

<!-- Content //-->

<div class="blogbody">

<?php

include("cv.php");

?>

</div>

</div>


</div>


<div id="links">


</div>


</body>

</html>
