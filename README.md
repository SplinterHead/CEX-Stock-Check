# CEX-Stock-Check
As the CEX website does not have the option to subscribe or set up alerts as to when an item comes back into stock,
this simple tool will allow alerts when they do. Best run on a crontab job

## Setup
Get the item ID by browsing to the [CeX Website](https://uk.webuy.com) and searching for the item.
Get the first part of the URL from the page and extract the ID like this:

`https://uk.webuy.com/product-detail?id=5053083156527&categoryName=dvd-movies&superCatName=...` -> `5053083156527`

Add that ID to the script as the `product_code`

`product_code=045496510107 # Jurassic World: Fallen Kingdom`

## Execution
### Single
This tool will run once by itself so to get a one shot, manual update this example will work

```bash
./cex_checker.sh
```
### Loop
As this is a single command, it can be looped to get constant checking

```bash
while true; do ./cex_checker.sh && sleep x; done
```
_Where 'x' is an amount of time in seconds_

### Crontab
The best way to execute this is to add it to a linux machine's Crontab system to get automated unattended updates.

```bash
crontab -e
0 * * * * /path/to/cex_checker.sh
```

_Example to get updates each hour_

## Future Improvements
* Improve the console output to print the item title for verification
* Basic SMTP update sending to be alerted
* Optional integrations with Slack, Whatsapp etc.