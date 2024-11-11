<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
            <?php
            
            //exercício A
            $a = (65+43)/18;

            //exercício B
            $b = (6**2) * 8/(5*12) + 21;

            //exercício C
            $c = sqrt(64) * 34-12;

            //exercício D
            $d = 34/16/8 + 8**3 * (123-15 + 8*(12**2*3) - 16);

            //exercício E
            $e = 2 * 3**3 + (sqrt(81)/3 * 12) * 65 + (1253/(12**2 + 7));

            echo 'Exercício a = ' .$a. '</br>';
            echo '</br>';
            echo 'Exercício b = ' .$b. '</br>';
            echo '</br>';
            echo 'Exercício c = ' .$c. '</br>';
            echo '</br>';
            echo 'Exercício d = ' .round($d, 2). '</br>';
            echo '</br>';
            echo 'Exercício e = ' .round($e, 2);
            ?>
</body>
</html>