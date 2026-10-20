Metadata Extractor API
============

Metadata Extractor is a website metadata extraction API that pulls HTML meta tags from any submitted URL, returning the page title, meta description, author, robots directives, and language. Paid tiers add Open Graph tags, JSON-LD schemas, and favicons.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-metadataextractor.svg)](https://pypi.org/project/apiverve-metadataextractor/)

This is a Python wrapper for the [Metadata Extractor API](https://apiverve.com/marketplace/metadataextractor?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-metadataextractor
```

Using `pip3`:

```bash
pip3 install apiverve-metadataextractor
```

---

## Configuration

Before using the Metadata Extractor API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_metadataextractor.apiClient import MetadataextractorAPIClient

# Initialize the client with your APIVerve API key
api = MetadataextractorAPIClient("[YOUR_API_KEY]")

query = { "url": "https://apiverve.com" }

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Metadata Extractor API documentation is found here: [https://docs.apiverve.com/ref/metadataextractor](https://docs.apiverve.com/ref/metadataextractor?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_metadataextractor.apiClient import MetadataextractorAPIClient

# Initialize the client with your APIVerve API key
api = MetadataextractorAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = { "url": "https://apiverve.com" }
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

## Error Handling

The API client provides comprehensive error handling through the `MetadataextractorAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_metadataextractor.apiClient import MetadataextractorAPIClient, MetadataextractorAPIClientError

api = MetadataextractorAPIClient("[YOUR_API_KEY]")

query = { "url": "https://apiverve.com" }

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except MetadataextractorAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_metadataextractor.apiClient import MetadataextractorAPIClient, MetadataextractorAPIClientError

api = MetadataextractorAPIClient("[YOUR_API_KEY]")

query = { "url": "https://apiverve.com" }

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except MetadataextractorAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_metadataextractor.apiClient import MetadataextractorAPIClient, MetadataextractorAPIClientError

query = { "url": "https://apiverve.com" }

# Using context manager ensures proper cleanup
with MetadataextractorAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except MetadataextractorAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_metadataextractor.apiClient import MetadataextractorAPIClient

# Enable debug mode
api = MetadataextractorAPIClient("[YOUR_API_KEY]", debug=True)

query = { "url": "https://apiverve.com" }

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_metadataextractor.apiClient import MetadataextractorAPIClient

api = MetadataextractorAPIClient("[YOUR_API_KEY]")

query = { "url": "https://apiverve.com" }

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
