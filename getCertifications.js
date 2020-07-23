const puppeteer = require('puppeteer');


// This code will scrape all of the names of the EcoLabels listed in the EcoLabel Index
// and output to console
function run () {
    return new Promise(async (resolve, reject) => {
        try {

            const browser = await puppeteer.launch();
            const page = await browser.newPage();
            await page.goto("http://www.ecolabelindex.com/ecolabels/?st=country,us");
            let certifications = [];
            let newCerts = await page.evaluate(() => {
                let results = [];
                let items = document.querySelectorAll('.cuddle');
                items.forEach((item) => {
                    results.push({
                        text: item.innerText,
                    });
                });
                return results;
             });

             certifications = certifications.concat(newCerts);


           browser.close();


            return resolve(certifications);
        } catch (e) {
            return reject(e);
        }
    })
}
run().then(console.log).catch(console.error);
