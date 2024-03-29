<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fisher-Yates Shuffle</title>
</head>
<body>

<script>
    function fisherYatesShuffle(arr) {
        for (let i = arr.length - 1; i > 0; i--) {
            const j = Math.floor(Math.random() * (i + 1));
            [arr[i], arr[j]] = [arr[j], arr[i]];
        }
    }
    
    let questions = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35];
    fisherYatesShuffle(questions);

    // Tampilkan hasil di dalam dokumen HTML
    document.write('<p>Soal yang diacak: ' + questions.join(', ') + '</p>');
</script>
$acak = $nilai;
        echo $acak."<br>";
    }
    echo "#############################<br>";
</body>
</html>