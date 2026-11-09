/// Response models for the Metadata Extractor API.

/// API Response wrapper.
class MetadataextractorResponse {
  final String status;
  final dynamic error;
  final MetadataextractorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  MetadataextractorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory MetadataextractorResponse.fromJson(Map<String, dynamic> json) => MetadataextractorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? MetadataextractorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Metadata Extractor API.

class MetadataextractorData {
  String? requestUrl;
  String? url;
  String? canonical;
  String? lang;
  String? charset;
  String? title;
  String? image;
  List<MetadataextractorDataFaviconsItem>? favicons;
  String? author;
  String? description;
  String? keywords;
  String? source;
  String? price;
  String? priceCurrency;
  String? availability;
  String? robots;
  List<dynamic>? jsonld;
  String? og:url;
  String? og:locale;
  String? og:locale:alternate;
  String? og:title;
  String? og:type;
  String? og:description;
  String? og:determiner;
  String? og:siteName;
  String? og:image;
  String? og:image:secureUrl;
  String? og:image:type;
  String? og:image:width;
  String? og:image:height;
  String? twitter:title;
  String? twitter:description;
  String? twitter:image;
  String? twitter:image:alt;
  String? twitter:card;
  String? twitter:site;
  String? twitter:site:id;
  String? twitter:url;
  String? twitter:accountId;
  String? twitter:creator;
  String? twitter:creator:id;
  String? twitter:player;
  String? twitter:player:width;
  String? twitter:player:height;
  String? twitter:player:stream;
  String? twitter:app:name:iphone;
  String? twitter:app:id:iphone;
  String? twitter:app:url:iphone;
  String? twitter:app:name:ipad;
  String? twitter:app:id:ipad;
  String? twitter:app:url:ipad;
  String? twitter:app:name:googleplay;
  String? twitter:app:id:googleplay;
  String? twitter:app:url:googleplay;
  List<MetadataextractorDataHeadingsItem>? headings;
  List<MetadataextractorDataImgtagsItem>? imgTags;
  String? responseBody;
  String? viewport;
  String? theme-color;
  String? application-name;
  String? og:image:alt;

  MetadataextractorData({
    this.requestUrl,
    this.url,
    this.canonical,
    this.lang,
    this.charset,
    this.title,
    this.image,
    this.favicons,
    this.author,
    this.description,
    this.keywords,
    this.source,
    this.price,
    this.priceCurrency,
    this.availability,
    this.robots,
    this.jsonld,
    this.og:url,
    this.og:locale,
    this.og:locale:alternate,
    this.og:title,
    this.og:type,
    this.og:description,
    this.og:determiner,
    this.og:siteName,
    this.og:image,
    this.og:image:secureUrl,
    this.og:image:type,
    this.og:image:width,
    this.og:image:height,
    this.twitter:title,
    this.twitter:description,
    this.twitter:image,
    this.twitter:image:alt,
    this.twitter:card,
    this.twitter:site,
    this.twitter:site:id,
    this.twitter:url,
    this.twitter:accountId,
    this.twitter:creator,
    this.twitter:creator:id,
    this.twitter:player,
    this.twitter:player:width,
    this.twitter:player:height,
    this.twitter:player:stream,
    this.twitter:app:name:iphone,
    this.twitter:app:id:iphone,
    this.twitter:app:url:iphone,
    this.twitter:app:name:ipad,
    this.twitter:app:id:ipad,
    this.twitter:app:url:ipad,
    this.twitter:app:name:googleplay,
    this.twitter:app:id:googleplay,
    this.twitter:app:url:googleplay,
    this.headings,
    this.imgTags,
    this.responseBody,
    this.viewport,
    this.theme-color,
    this.application-name,
    this.og:image:alt,
  });

  factory MetadataextractorData.fromJson(Map<String, dynamic> json) => MetadataextractorData(
      requestUrl: json['requestUrl'],
      url: json['url'],
      canonical: json['canonical'],
      lang: json['lang'],
      charset: json['charset'],
      title: json['title'],
      image: json['image'],
      favicons: (json['favicons'] as List?)?.map((e) => MetadataextractorDataFaviconsItem.fromJson(e)).toList(),
      author: json['author'],
      description: json['description'],
      keywords: json['keywords'],
      source: json['source'],
      price: json['price'],
      priceCurrency: json['priceCurrency'],
      availability: json['availability'],
      robots: json['robots'],
      jsonld: (json['jsonld'] as List?)?.cast<dynamic>(),
      og:url: json['og:url'],
      og:locale: json['og:locale'],
      og:locale:alternate: json['og:locale:alternate'],
      og:title: json['og:title'],
      og:type: json['og:type'],
      og:description: json['og:description'],
      og:determiner: json['og:determiner'],
      og:siteName: json['og:site_name'],
      og:image: json['og:image'],
      og:image:secureUrl: json['og:image:secure_url'],
      og:image:type: json['og:image:type'],
      og:image:width: json['og:image:width'],
      og:image:height: json['og:image:height'],
      twitter:title: json['twitter:title'],
      twitter:description: json['twitter:description'],
      twitter:image: json['twitter:image'],
      twitter:image:alt: json['twitter:image:alt'],
      twitter:card: json['twitter:card'],
      twitter:site: json['twitter:site'],
      twitter:site:id: json['twitter:site:id'],
      twitter:url: json['twitter:url'],
      twitter:accountId: json['twitter:account_id'],
      twitter:creator: json['twitter:creator'],
      twitter:creator:id: json['twitter:creator:id'],
      twitter:player: json['twitter:player'],
      twitter:player:width: json['twitter:player:width'],
      twitter:player:height: json['twitter:player:height'],
      twitter:player:stream: json['twitter:player:stream'],
      twitter:app:name:iphone: json['twitter:app:name:iphone'],
      twitter:app:id:iphone: json['twitter:app:id:iphone'],
      twitter:app:url:iphone: json['twitter:app:url:iphone'],
      twitter:app:name:ipad: json['twitter:app:name:ipad'],
      twitter:app:id:ipad: json['twitter:app:id:ipad'],
      twitter:app:url:ipad: json['twitter:app:url:ipad'],
      twitter:app:name:googleplay: json['twitter:app:name:googleplay'],
      twitter:app:id:googleplay: json['twitter:app:id:googleplay'],
      twitter:app:url:googleplay: json['twitter:app:url:googleplay'],
      headings: (json['headings'] as List?)?.map((e) => MetadataextractorDataHeadingsItem.fromJson(e)).toList(),
      imgTags: (json['imgTags'] as List?)?.map((e) => MetadataextractorDataImgtagsItem.fromJson(e)).toList(),
      responseBody: json['responseBody'],
      viewport: json['viewport'],
      theme-color: json['theme-color'],
      application-name: json['application-name'],
      og:image:alt: json['og:image:alt'],
    );
}

class MetadataextractorDataFaviconsItem {
  String? rel;
  String? href;
  String? sizes;

  MetadataextractorDataFaviconsItem({
    this.rel,
    this.href,
    this.sizes,
  });

  factory MetadataextractorDataFaviconsItem.fromJson(Map<String, dynamic> json) => MetadataextractorDataFaviconsItem(
      rel: json['rel'],
      href: json['href'],
      sizes: json['sizes'],
    );
}

class MetadataextractorDataHeadingsItem {
  String? level;
  String? text;

  MetadataextractorDataHeadingsItem({
    this.level,
    this.text,
  });

  factory MetadataextractorDataHeadingsItem.fromJson(Map<String, dynamic> json) => MetadataextractorDataHeadingsItem(
      level: json['level'],
      text: json['text'],
    );
}

class MetadataextractorDataImgtagsItem {
  String? src;
  String? alt;
  String? width;
  String? height;

  MetadataextractorDataImgtagsItem({
    this.src,
    this.alt,
    this.width,
    this.height,
  });

  factory MetadataextractorDataImgtagsItem.fromJson(Map<String, dynamic> json) => MetadataextractorDataImgtagsItem(
      src: json['src'],
      alt: json['alt'],
      width: json['width'],
      height: json['height'],
    );
}

class MetadataextractorRequest {
  String url;

  MetadataextractorRequest({
    required this.url,
  });

  Map<String, dynamic> toJson() => {
      'url': url,
    };
}
