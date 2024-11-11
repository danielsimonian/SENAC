function imcOption (){

    let imcIf = document.getElementById("imcIf");
    let imcSC = document.getElementById("imcSC");
    let imcLogica = document.getElementById("imcLogica");

    if (imcIf.checked) {
        imcLogica.innerHTML = 
        `
            <?php
                    
                            require "imc_IF.php";

                        ?>
        `
    } else if (imcSC.checked) {
        imcLogica.innerHTML = 
        `
        <?php
                    
                            require "imc_SC.php";

                        ?>
        `
    }
}