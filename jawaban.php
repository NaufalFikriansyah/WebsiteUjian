<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fisher-Yates Shuffle</title>
</head>
<body>
	<script>
	function fisher_yates_shuffle(&$"choices"){
    $n = count($"choices");
    for ($i = $n - 1; $i > 0; $i--) {
        $j = mt_rand(0, $i);
        list($choices[$i], $choices[$j]) = array($choices[$j], $choices[$i]);
    }
$multiple_choice = ["A", "B", "C", "D", "E"];

echo "Sebelum diacak: " . implode(", ", $multiple_choice) . "\n";

echo "Setelah diacak: " . implode(", ", $multiple_choice) . "\n";

?>