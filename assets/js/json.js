$(document).ready(function () {

    /**
     * Appel de la page data.php pour mettre les résultats de la BDD dans un tableau
     */
    $.ajax({
        url: "http://127.0.0.1/memoire/assets/php/json.php",
        type: "GET",
        dataType : 'json',
        success: function don(data) {
            console.log(data);
            
            var courber;
            var site = {
                //Libelle du site
                label: [],
                //Score 1
                x: [],
                //Score 2
                y: []
            };

            var len = data.length;

            for (var i = 0; i < len; i++) {
                var tdate = new Date(data[i].tdate);
                site.label.push(tdate.toLocaleTimeString("fr-FR",{hour: '2-digit',minute:'2-digit'})); //On place le libelle du site dans la variable site.label
                site.x.push(data[i].temp); //On place le score PageSpeed du site dans la variable site.x
                site.y.push(data[i].hum);      //On place le score Yslow du site dans la variable site.y
            }
            // on affiche tous les donnees de la bdd  dans la console
            // console.log(site);
            // console.log(typeof(site.label[0]));
            // console.log(site.label[0]);

            // On récupère l'ID du graphique (canvas) situé dans la page result.php (bubble chart)
            // var ctx = $("#bubble-chart");
            // var ctx2 = $("#v2");

            //Configuration des données et des options du graphique
            var data = {
                labels: site.label ,
                series: [
                         site.x
                    ]
            };
            var data2 = {
                labels: site.label ,
                series: [
                         site.y
                    ]
            };
            var options = {
                    lineSmooth: Chartist.Interpolation.cardinal({
                        tension: 0
                    }),
                    axisY : {
                        type: Chartist.AutoScaleAxis
                    },
                    low: 0,
                    // high: 100, // creative tim: we recommend you to set the high sa the biggest value + something for a better look
                    showArea : true,
                    chartPadding: {
                        top: 0,
                        right: 0,
                        bottom: 0,
                        left: 0
                    },
                 };
            courber = new Chartist.Line('#temp', data, options);
            window.setTimeout(timerFunction, 3000); // Generic timer function called after 3 seconds
            function timerFunction() {
                var newData = {labels: site.label ,
                    series: [
                             site.x
                        ]}; // Make sure this matches the format of your original data
                courber.update(newData);
            };

            // fonction de reatualisation de la courbe
        // fin fonction updateChart
         },

        error: function (results) {
            console.log(results);
            console.log("erreure");
        }
        
    });
    
});