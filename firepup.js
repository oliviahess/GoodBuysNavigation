const puppeteer = require('puppeteer');
const firebase = require('firebase');

var firebaseConfig = {
    apiKey: "AIzaSyBK14WMJCKbxWJEnV_8515zLSj0GRY7YFA",
    authDomain: "good-buys.firebaseapp.com",
    databaseURL: "https://good-buys.firebaseio.com",
    projectId: "good-buys",
    storageBucket: "good-buys.appspot.com",
    messagingSenderId: "401460006658",
    appId: "1:401460006658:web:4becf0a1978b47faefbc1b",
    measurementId: "G-6648W7KDH5"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);

  // Get a reference to the database service
  var database = firebase.database();

  //Writing information to the database
  function writeData(company, score, type, ownership) {
      database.ref('companies/' + company).set({
          ethiscore: score,
          companyType: type,
          owner: ownership
      });
  }
  
  var companies = [
  ];

//Making the database
  let clickSignInWithQuery = async() =>{

    const browser = await puppeteer.launch({headless: true});
    const page = await browser.newPage();
    await page.goto('https://research.ethicalconsumer.org/user/login', {waitUntil: 'networkidle2'});
    await page.click('button[name="op"]');
    await page.click('input[name="name"]');
    await page.$eval('input[name="name"]', el => el.value = 'scu');
    await page.click('input[name="pass"]');
    await page.$eval('input[name="pass"]', el => el.value = 'ildtiale49');
    await page.click('button[id="edit-submit"]');

    const readThis = companies ;
    for(var k = 0; k< readThis.length; k ++) {

    await page.goto('https://research.ethicalconsumer.org/search/companies-brands', {waitUntil: 'networkidle2'});
    await page.waitFor('input[name=keywords]');

    //evaluate an input
   // await page.$eval('input[name=keywords]', el => el.value = "kirkland");

    await page.type('input[name=keywords]', readThis[k]);

     

    await page.click('button[type="submit"]');
    await page.waitFor(1000);
  //  console.log(readThis);

    const searchValue = await page.evaluate(() => {
        let companyNameCollection =  document.getElementsByClassName("views-field views-field-name");
        let ethiscoreCollection = document.getElementsByClassName("views-field views-field-ethiscore");
        let typeOfCompanyCollection = document.getElementsByClassName("views-field views-field-subtype-1");
        let ownershipCollection = document.getElementsByClassName("views-field views-field-parent-1");

        let collectionSize = companyNameCollection.length;

        var mycompany = [];
        var myethiscore = []; 
        var mytype = []; 
        var myOwnership = [];
        for (var i = 0; i< collectionSize; i++) {
            mycompany[i]= companyNameCollection[i].innerText;
            myethiscore[i]= ethiscoreCollection[i].innerText;
            mytype[i]= typeOfCompanyCollection[i].innerText;
            myOwnership[i] = ownershipCollection[i].innerText;
        }
        var obj = {
            company: mycompany,
            score: myethiscore,
            type: mytype,
            owner: myOwnership
        };

    return obj;
    });
    //loop through companyNames
    await page.waitFor(1000);

    for (var i = 1; i< searchValue.company.length; i++) {
        var companyName = searchValue.company[i];

        if (companyName.includes('.')) {
            searchValue.company[i].replace('.', '');
        } 
        if(
            companyName.includes('[') ||
            companyName.includes('&') ||
            companyName.includes('#') ||
            companyName.includes('$') ||
            companyName.includes('.')
         ) {
             // do nothing
        } else {
                // write data to firebase
            writeData(searchValue.company[i],
                        searchValue.score[i],
                        searchValue.type[i],
                        searchValue.owner[i]
                    );
        }
    }
      }
    console.log("done");
    browser.close();


}


clickSignInWithQuery();
