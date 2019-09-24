# CookieCrawler

---

Node CLI utility for retrieving cookie information from multiple sites.

##Installation

1. Clone repo
2. Run `npm i` to install dependancies
3. Add sites to `sites.txt`.
    - Plain txt file with each line containing a site.
    - Each url must be added individually. eg: domain.com/login
4. Check `config.json`, although defaults should be fine.
5. Temporarily add the node_modules/.bin folder to the path variable of the current terminal session before starting the crawler. (Example: export PATH=$PATH:$(realpath node_modules/.bin))
6. Run `npm start` to start the tool.
    - This may take a while to complete as each url is loaded with all it's assets.
7. If everything worked the results will be available in `cookies.csv` (or whatever name was set in config).

![Screenshot](screen-terminal.png)

**Example results**
![Screenshot](screen-result.png)

###TODO:
  - Add support for more input types.
  - Tests
