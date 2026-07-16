# [Metadata Extractor API](https://apiverve.com/marketplace/metadataextractor?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)

Metadata Extractor is a simple tool for extracting metadata from web pages. It returns the meta title, meta description, and more.

The Metadata Extractor API provides a simple, reliable way to integrate metadata extractor functionality into your applications. Built for developers who need production-ready metadata extractor capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/metadataextractor?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/metadataextractor?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-POST-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/metadataextractor)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.MetadataExtractor)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-metadataextractor/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_metadataextractor)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/metadataextractor)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_metadataextractor)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callMetadataExtractorAPI() {
    try {
        const requestBody = {
    "url": "https://apiverve.com"
};

        const response = await fetch('https://api.apiverve.com/v1/metadataextractor', {
            method: 'POST',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(requestBody)
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callMetadataExtractorAPI();
```

### Using cURL

```bash
curl -X POST "https://api.apiverve.com/v1/metadataextractor" \
  -H "x-api-key: YOUR_API_KEY_HERE" \
  -H "Content-Type: application/json" \
  -d '{
    "url": "https://apiverve.com"
}'
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/metadataextractor
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/metadataextractor) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.MetadataExtractor
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.MetadataExtractor) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-metadataextractor
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-metadataextractor/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_metadataextractor
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_metadataextractor) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/metadataextractor
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/metadataextractor) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_metadataextractor
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_metadataextractor) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:metadataextractor-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/metadataextractor-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Metadata Extractor API](https://apiverve.com/marketplace/metadataextractor?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/metadataextractor](https://docs.apiverve.com/ref/metadataextractor)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Metadata Extractor API is commonly used for:

- **Web Applications** - Add metadata extractor features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with metadata extractor capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Metadata Extractor API:

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

---

## Support & Community

- 🏠 **API Home**: [Metadata Extractor API](https://apiverve.com/marketplace/metadataextractor?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
