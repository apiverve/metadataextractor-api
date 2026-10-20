Metadata Extractor API
============

Metadata Extractor is a website metadata extraction API that pulls HTML meta tags from any submitted URL, returning the page title, meta description, author, robots directives, and language. Paid tiers add Open Graph tags, JSON-LD schemas, and favicons.


[![NuGet version](https://img.shields.io/nuget/v/APIVerve.API.MetadataExtractor.svg)](https://www.nuget.org/packages/APIVerve.API.MetadataExtractor)

This is a .NET wrapper for the [Metadata Extractor API](https://apiverve.com/marketplace/metadataextractor?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.MetadataExtractor
```

Using the Package Manager:
```
nuget install APIVerve.API.MetadataExtractor
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.MetadataExtractor
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.MetadataExtractor"
5. Click on the APIVerve.API.MetadataExtractor package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the Metadata Extractor API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve.API.MetadataExtractor;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new MetadataExtractorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MetadataExtractorQueryOptions {
            Url = "https://apiverve.com"
        };

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The Metadata Extractor API documentation is found here: [https://docs.apiverve.com/ref/metadataextractor](https://docs.apiverve.com/ref/metadataextractor?utm_source=nuget&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
Metadata Extractor API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new MetadataExtractorAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.MetadataExtractor;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new MetadataExtractorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MetadataExtractorQueryOptions {
            Url = "https://apiverve.com"
        };

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve.API.MetadataExtractor;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new MetadataExtractorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MetadataExtractorQueryOptions {
            Url = "https://apiverve.com"
        };

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.MetadataExtractor;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new MetadataExtractorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MetadataExtractorQueryOptions {
            Url = "https://apiverve.com"
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.MetadataExtractor;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new MetadataExtractorAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new MetadataExtractorQueryOptions {
            Url = "https://apiverve.com"
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new MetadataExtractorAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new MetadataExtractorQueryOptions {
    Url = "https://apiverve.com"
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new MetadataExtractorAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new MetadataExtractorQueryOptions {
    Url = "https://apiverve.com"
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new MetadataExtractorAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new MetadataExtractorQueryOptions {
    Url = "https://apiverve.com"
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
var queryOptions = new MetadataExtractorQueryOptions {
    Url = "https://apiverve.com"
};

using (var apiClient = new MetadataExtractorAPIClient("[YOUR_API_KEY]"))
{
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
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

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=nuget&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=nuget&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
