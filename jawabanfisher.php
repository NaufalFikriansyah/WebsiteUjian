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

    // Contoh penggunaan:
    let questions = [A, B, C, D, E,];
    fisherYatesShuffle(questions);

    // Tampilkan hasil di dalam dokumen HTML
    document.write('<p>Soal yang diacak: ' + questions.join(', ') + '</p>');
</script>

</body>
</html>