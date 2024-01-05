sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'drivers/test/integration/FirstJourney',
		'drivers/test/integration/pages/DriversList',
		'drivers/test/integration/pages/DriversObjectPage'
    ],
    function(JourneyRunner, opaJourney, DriversList, DriversObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('drivers') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheDriversList: DriversList,
					onTheDriversObjectPage: DriversObjectPage
                }
            },
            opaJourney.run
        );
    }
);