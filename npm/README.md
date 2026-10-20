# Metadata Extractor API

Metadata Extractor is a website metadata extraction API that pulls HTML meta tags from any submitted URL, returning the page title, meta description, author, robots directives, and language. Paid tiers add Open Graph tags, JSON-LD schemas, and favicons.

[![npm version](https://img.shields.io/npm/v/@apiverve/metadataextractor.svg)](https://www.npmjs.com/package/@apiverve/metadataextractor)

This is a JavaScript wrapper for the [Metadata Extractor API](https://apiverve.com/marketplace/metadataextractor?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/metadataextractor
```

Using yarn:
```shell
yarn add @apiverve/metadataextractor
```

---

## Configuration

Before using the Metadata Extractor API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Metadata Extractor API documentation is found here: [https://docs.apiverve.com/ref/metadataextractor](https://docs.apiverve.com/ref/metadataextractor?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const metadataextractorAPI = require('@apiverve/metadataextractor');
const api = new metadataextractorAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  "url": "https://apiverve.com"
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  "url": "https://apiverve.com"
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  "url": "https://apiverve.com"
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "requestUrl": "https://apiverve.com",
    "url": "https://apiverve.com/",
    "canonical": "",
    "lang": "en",
    "charset": "utf-8",
    "title": "APIVerve — One key for 300+ production APIs",
    "image": "",
    "favicons": [
      {
        "rel": "icon",
        "href": "/images/favicon.ico",
        "sizes": "any"
      },
      {
        "rel": "icon",
        "type": "image/png",
        "href": "/images/favicon.png"
      },
      {
        "rel": "apple-touch-icon",
        "href": "/images/apple-touch-icon.png"
      }
    ],
    "author": "",
    "description": "Consistent schemas, predictable credit pricing, and an uptime SLA on every paid plan across 300+ production APIs. One key, one bill, zero glue code.",
    "keywords": "",
    "source": "",
    "price": "",
    "priceCurrency": "",
    "availability": "",
    "robots": "",
    "jsonld": [],
    "og:url": "https://apiverve.com",
    "og:locale": "en_US",
    "og:locale:alternate": "",
    "og:title": "APIVerve — One key for 300+ production APIs",
    "og:type": "website",
    "og:description": "Consistent schemas, predictable credit pricing, and an uptime SLA on every paid plan across 300+ production APIs. One key, one bill, zero glue code.",
    "og:determiner": "",
    "og:site_name": "APIVerve",
    "og:image": "https://apiverve.com/social-images/page-home.png",
    "og:image:secure_url": "",
    "og:image:type": "",
    "og:image:width": "1200",
    "og:image:height": "630",
    "twitter:title": "APIVerve — One key for 300+ production APIs",
    "twitter:description": "Consistent schemas, predictable credit pricing, and an uptime SLA on every paid plan across 300+ production APIs.",
    "twitter:image": "https://apiverve.com/social-images/page-home.png",
    "twitter:image:alt": "",
    "twitter:card": "summary_large_image",
    "twitter:site": "",
    "twitter:site:id": "",
    "twitter:url": "",
    "twitter:account_id": "",
    "twitter:creator": "",
    "twitter:creator:id": "",
    "twitter:player": "",
    "twitter:player:width": "",
    "twitter:player:height": "",
    "twitter:player:stream": "",
    "twitter:app:name:iphone": "",
    "twitter:app:id:iphone": "",
    "twitter:app:url:iphone": "",
    "twitter:app:name:ipad": "",
    "twitter:app:id:ipad": "",
    "twitter:app:url:ipad": "",
    "twitter:app:name:googleplay": "",
    "twitter:app:id:googleplay": "",
    "twitter:app:url:googleplay": "",
    "headings": [
      {
        "level": "h1",
        "text": "Every API your product needs, behind one key."
      },
      {
        "level": "h2",
        "text": "The boring parts of API integration, already solved."
      },
      {
        "level": "h3",
        "text": "One response envelope"
      },
      {
        "level": "h3",
        "text": "Flat credit pricing"
      },
      {
        "level": "h3",
        "text": "Backed by an uptime SLA"
      },
      {
        "level": "h2",
        "text": "Your first call takes two minutes."
      },
      {
        "level": "h3",
        "text": "Grab a key"
      },
      {
        "level": "h3",
        "text": "Call any endpoint"
      },
      {
        "level": "h3",
        "text": "Ship it"
      },
      {
        "level": "h2",
        "text": "Authenticate once. Point at anything."
      },
      {
        "level": "h2",
        "text": "Skip the integration work. Ship the feature."
      },
      {
        "level": "h3",
        "text": "User verification"
      },
      {
        "level": "h3",
        "text": "Commerce toolkit"
      },
      {
        "level": "h3",
        "text": "Data enrichment"
      },
      {
        "level": "h3",
        "text": "Docs & media"
      },
      {
        "level": "h2",
        "text": "Metrics from the last 24 hours."
      },
      {
        "level": "h2",
        "text": "Production APIs for the things you keep rebuilding."
      },
      {
        "level": "h3",
        "text": "Email Validator →"
      },
      {
        "level": "h3",
        "text": "IP Lookup →"
      },
      {
        "level": "h3",
        "text": "Weather →"
      },
      {
        "level": "h3",
        "text": "QR Code Generator →"
      },
      {
        "level": "h3",
        "text": "Currency Converter →"
      },
      {
        "level": "h3",
        "text": "Translator →"
      },
      {
        "level": "h2",
        "text": "450,000+ lookups, validations, and conversions a day, through one key."
      },
      {
        "level": "h2",
        "text": "Give your software a way to act on the world."
      },
      {
        "level": "h3",
        "text": "Scaling in production?"
      },
      {
        "level": "h4",
        "text": "Product"
      },
      {
        "level": "h4",
        "text": "Solutions"
      },
      {
        "level": "h4",
        "text": "Integrations"
      },
      {
        "level": "h4",
        "text": "Resources"
      },
      {
        "level": "h4",
        "text": "Compare"
      },
      {
        "level": "h4",
        "text": "SDKs"
      },
      {
        "level": "h4",
        "text": "Company"
      },
      {
        "level": "h4",
        "text": "Featured APIs"
      },
      {
        "level": "h4",
        "text": "More"
      },
      {
        "level": "h4",
        "text": "Legal"
      },
      {
        "level": "h4",
        "text": "Important disclaimer"
      }
    ],
    "imgTags": [
      {
        "src": "/images/favicon.png",
        "alt": "",
        "width": "26",
        "height": "26"
      },
      {
        "src": "/images/brands/brand01.png",
        "alt": "Microsoft"
      },
      {
        "src": "/images/brands/brand02.png",
        "alt": "DuckDuckGo"
      },
      {
        "src": "/images/brands/brand03.png",
        "alt": "Topdanmark"
      },
      {
        "src": "/images/brands/brand04.png",
        "alt": "University of Maryland"
      },
      {
        "src": "/images/brands/brand05.png",
        "alt": "Postman"
      },
      {
        "src": "/images/brands/brand06.png",
        "alt": "RapidAPI"
      },
      {
        "src": "/images/brands/brand07.png",
        "alt": "Zapier"
      },
      {
        "src": "/images/brands/brand08.svg",
        "alt": "Deloitte"
      },
      {
        "src": "/images/brands/brand01.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand02.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand03.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand04.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand05.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand06.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand07.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand08.svg",
        "alt": ""
      },
      {
        "src": "/images/brands/brand01.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand02.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand03.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand04.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand05.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand06.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand07.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand08.svg",
        "alt": ""
      },
      {
        "src": "/images/brands/brand01.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand02.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand03.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand04.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand05.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand06.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand07.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand08.svg",
        "alt": ""
      },
      {
        "src": "/images/brands/brand01.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand02.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand03.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand04.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand05.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand06.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand07.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand08.svg",
        "alt": ""
      },
      {
        "src": "/images/brands/brand01.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand02.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand03.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand04.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand05.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand06.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand07.png",
        "alt": ""
      },
      {
        "src": "/images/brands/brand08.svg",
        "alt": ""
      },
      {
        "src": "/images/favicon.png",
        "alt": "",
        "width": "24",
        "height": "24"
      }
    ],
    "responseBody": "",
    "viewport": "width=device-width, initial-scale=1, maximum-scale=1",
    "theme-color": "#ffffff",
    "application-name": "APIVerve",
    "og:image:alt": "APIVerve — One key for 300+ production APIs"
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
