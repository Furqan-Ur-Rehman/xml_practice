<!-- Php used for validation of Xml document (Xml with Internal DTD.xml) -->

<?php 
$xml = new DOMDocument;
$xml-> load('New_xml_practice/4th_xml_with_internalDTD.xml');

if($xml-> validate()){
    echo "It is an valid Document, ok!!";
}
else{
    echo "It is not an valid Document!!";
}
?>