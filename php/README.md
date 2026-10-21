# Metadata Extractor API - PHP Package

Metadata Extractor is a website metadata extraction API that pulls HTML meta tags from any submitted URL, returning the page title, meta description, author, robots directives, and language. Paid tiers add Open Graph tags, JSON-LD schemas, and favicons.

## Installation

Install via Composer:

```bash
composer require apiverve/metadataextractor
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Metadataextractor\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['url' => 'https://apiverve.com']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Metadataextractor\Client;
use APIVerve\Metadataextractor\Exceptions\APIException;
use APIVerve\Metadataextractor\Exceptions\ValidationException;

try {
    $response = $client->execute(['url' => 'https://apiverve.com']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/metadataextractor?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/metadataextractor?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/metadataextractor?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
