const puppeteer = require('puppeteer');


// This code will scrape the first page of the Audobon International Documentation.
// In order to get all of the company names, you will have to use the puppetteer "click"
//  function to click the "next" page button (on this website, it is of class "pagination-button",
//  and then use the same code written below to scrape the next page and so on.
        // example to click to next page:  await page.click('.pagination-button');
function run () {
    return new Promise(async (resolve, reject) => {
        try {
            //Launch a new Browser
            const browser = await puppeteer.launch();
            // New Page in browser
            const page = await browser.newPage();
            // Go to Audobon Directory
            await page.goto("https://directory.auduboninternational.org/directory");

            // Store the company names in "Companies[]" array
            let companies = [];
            let getCompanies = await page.evaluate(() => {
                // Use DOM Methods here!
                let results = [];
                // Each company name is stored in the class "member-title"
                let companyNames = document.querySelectorAll('.member-title');
                companyNames.forEach((item) => {
                    results.push({
                        text: item.innerText,
                    });
                });
                return results;
             });

             companies = companies.concat(getCompanies);

           browser.close();


            return resolve(companies);
        } catch (e) {
            return reject(e);
        }
    })
}
run().then(console.log).catch(console.error);

