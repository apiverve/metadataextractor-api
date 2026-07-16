# Metadata Extractor API - PHP Package

Metadata Extractor is a simple tool for extracting metadata from web pages. It returns the meta title, meta description, and more.

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
    "canonical": "https://apiverve.com",
    "lang": "en",
    "charset": "utf-8",
    "title": "APIVerve - Fast, Scalable, and Reliable APIs",
    "image": "",
    "favicons": [
      {
        "rel": "icon",
        "type": "image/x-icon",
        "href": "/images/favicon.ico"
      },
      {
        "rel": "icon",
        "type": "image/png",
        "href": "/images/favicon.png"
      },
      {
        "rel": "apple-touch-icon",
        "href": "/images/favicon.png"
      }
    ],
    "author": "APIVerve",
    "description": "APIVerve offers fast, scalable, and reliable APIs for developers. Access data enrichment, validation, and integration services with enterprise-grade performance.",
    "keywords": "API, developer tools, data enrichment, API integration, scalable APIs, reliable APIs",
    "source": "",
    "price": "",
    "priceCurrency": "",
    "availability": "",
    "robots": "index, follow",
    "jsonld": [
      {
        "@context": "https://schema.org",
        "@type": "Organization",
        "name": "APIVerve",
        "url": "https://apiverve.com",
        "logo": "https://apiverve.com/images/favicon.png",
        "sameAs": [
          "https://www.facebook.com/apiverve",
          "https://www.twitter.com/apivervehq",
          "https://www.linkedin.com/company/apiverve",
          "https://github.com/apiverve",
          "https://www.instagram.com/apiverve"
        ]
      },
      {
        "@context": "https://schema.org",
        "@type": "WebSite",
        "url": "https://apiverve.com",
        "potentialAction": {
          "@type": "SearchAction",
          "target": {
            "@type": "EntryPoint",
            "urlTemplate": "https://apiverve.com/marketplace?search={search_term_string}"
          },
          "query-input": "required name=search_term_string"
        }
      }
    ],
    "og:url": "https://apiverve.com",
    "og:locale": "",
    "og:locale:alternate": "",
    "og:title": "APIVerve - Fast, Scalable, and Reliable APIs",
    "og:type": "website",
    "og:description": "APIVerve offers fast, scalable, and reliable APIs for developers. Access data enrichment, validation, and integration services with enterprise-grade performance.",
    "og:determiner": "",
    "og:site_name": "APIVerve",
    "og:image": "https://apiverve.com/images/posterImage.png",
    "og:image:secure_url": "",
    "og:image:type": "",
    "og:image:width": "1200",
    "og:image:height": "630",
    "twitter:title": "APIVerve - Fast, Scalable, and Reliable APIs",
    "twitter:description": "APIVerve offers fast, scalable, and reliable APIs for developers. Access data enrichment, validation, and integration services with enterprise-grade performance.",
    "twitter:image": "https://apiverve.com/images/posterImage.png",
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
        "level": "h4",
        "text": "API Platform"
      },
      {
        "level": "h5",
        "text": "Core Platform"
      },
      {
        "level": "h5",
        "text": "Developer Tools"
      },
      {
        "level": "h5",
        "text": "Integrations"
      },
      {
        "level": "h4",
        "text": "Solutions"
      },
      {
        "level": "h5",
        "text": "By Industry"
      },
      {
        "level": "h5",
        "text": "By Use Case"
      },
      {
        "level": "h4",
        "text": "Resources"
      },
      {
        "level": "h5",
        "text": "Learn & Build"
      },
      {
        "level": "h5",
        "text": "Support & Community"
      },
      {
        "level": "h5",
        "text": "Trust & Transparency"
      },
      {
        "level": "h1",
        "text": "Fast, Scalable, and Reliable |"
      },
      {
        "level": "h2",
        "text": "Trusted by over 40,000 forward thinking developers"
      },
      {
        "level": "h2",
        "text": "Why Developers Choose APIVerve"
      },
      {
        "level": "h3",
        "text": "⚡ Unmatched Reliability"
      },
      {
        "level": "h3",
        "text": "🔑 True One-Key Simplicity"
      },
      {
        "level": "h3",
        "text": "🌐 GraphQL & Mocking"
      },
      {
        "level": "h2",
        "text": "Most Popular APIs"
      },
      {
        "level": "h3",
        "text": "Daily API Performance"
      },
      {
        "level": "h2",
        "text": "Trusted by Developers Worldwide"
      },
      {
        "level": "h4",
        "text": "Tomasz K."
      },
      {
        "level": "h4",
        "text": "Priya M."
      },
      {
        "level": "h4",
        "text": "Rafael S."
      },
      {
        "level": "h2",
        "text": "Native SDKs & Libraries"
      },
      {
        "level": "h4",
        "text": "JavaScript/TypeScript"
      },
      {
        "level": "h4",
        "text": "React"
      },
      {
        "level": "h4",
        "text": "Vue.js"
      },
      {
        "level": "h4",
        "text": "Angular"
      },
      {
        "level": "h4",
        "text": "Node.js"
      },
      {
        "level": "h4",
        "text": "Next.js"
      },
      {
        "level": "h2",
        "text": "Frequently Asked Questions"
      },
      {
        "level": "h3",
        "text": "How much usage is included with the Free Trial plan?"
      },
      {
        "level": "h3",
        "text": "How do I get an API Key?"
      },
      {
        "level": "h3",
        "text": "How does APIVerve use my data?"
      },
      {
        "level": "h3",
        "text": "Can I change my plan at any time?"
      },
      {
        "level": "h3",
        "text": "How do I know my plan usage?"
      },
      {
        "level": "h3",
        "text": "Can I cancel my plan anytime?"
      },
      {
        "level": "h3",
        "text": "Where can I find my invoices?"
      },
      {
        "level": "h3",
        "text": "What are your accepted payment methods?"
      },
      {
        "level": "h3",
        "text": "What happens when I go over the token limit for the month?"
      },
      {
        "level": "h3",
        "text": "What is a token?"
      },
      {
        "level": "h3",
        "text": "Do you offer student discounts?"
      },
      {
        "level": "h2",
        "text": "Ready to build something amazing?"
      },
      {
        "level": "h3",
        "text": "APIVerve"
      },
      {
        "level": "h4",
        "text": "Product"
      },
      {
        "level": "h4",
        "text": "Integrations"
      },
      {
        "level": "h4",
        "text": "Solutions"
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
        "text": "Legal"
      }
    ],
    "imgTags": [
      {
        "src": "/images/favicon.png",
        "alt": "APIVerve"
      },
      {
        "src": "/images/wreath.svg",
        "alt": "Award"
      },
      {
        "src": "/images/brands/brand06.png",
        "alt": "Postman"
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
        "alt": "Brand"
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
        "alt": "Brand"
      },
      {
        "src": "/images/favicon.png",
        "alt": "APIVerve"
      }
    ],
    "responseBody": "",
    "viewport": "width=device-width, initial-scale=1,width=device-width, initial-scale=1",
    "googlebot": "index, follow",
    "theme-color": "#ffffff",
    "application-name": "APIVerve",
    "msapplication-TileColor": "#3b82f6",
    "mobile-web-app-capable": "yes",
    "apple-mobile-web-app-title": "APIVerve",
    "apple-mobile-web-app-status-bar-style": "default",
    "og:image:alt": "APIVerve - Fast, Scalable, and Reliable APIs"
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/metadataextractor?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/metadataextractor?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/metadataextractor?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
