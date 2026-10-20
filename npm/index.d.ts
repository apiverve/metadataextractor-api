declare module '@apiverve/metadataextractor' {
  export interface metadataextractorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface metadataextractorResponse {
    status: string;
    error: string | null;
    data: MetadataExtractorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface MetadataExtractorData {
      requestURL:               null | string;
      url:                      null | string;
      canonical:                null | string;
      lang:                     null | string;
      charset:                  null | string;
      title:                    null | string;
      image:                    null | string;
      favicons:                 Favicon[];
      author:                   null | string;
      description:              null | string;
      keywords:                 null | string;
      source:                   null | string;
      price:                    null | string;
      priceCurrency:            null | string;
      availability:             null | string;
      robots:                   null | string;
      jsonld:                   any[];
      ogURL:                    null | string;
      ogLocale:                 null | string;
      ogLocaleAlternate:        null | string;
      ogTitle:                  null | string;
      ogType:                   null | string;
      ogDescription:            null | string;
      ogDeterminer:             null | string;
      ogSiteName:               null | string;
      ogImage:                  null | string;
      ogImageSecureURL:         null | string;
      ogImageType:              null | string;
      ogImageWidth:             null | string;
      ogImageHeight:            null | string;
      twitterTitle:             null | string;
      twitterDescription:       null | string;
      twitterImage:             null | string;
      twitterImageAlt:          null | string;
      twitterCard:              null | string;
      twitterSite:              null | string;
      twitterSiteID:            null | string;
      twitterURL:               null | string;
      twitterAccountID:         null | string;
      twitterCreator:           null | string;
      twitterCreatorID:         null | string;
      twitterPlayer:            null | string;
      twitterPlayerWidth:       null | string;
      twitterPlayerHeight:      null | string;
      twitterPlayerStream:      null | string;
      twitterAppNameIphone:     null | string;
      twitterAppIDIphone:       null | string;
      twitterAppURLIphone:      null | string;
      twitterAppNameIpad:       null | string;
      twitterAppIDIpad:         null | string;
      twitterAppURLIpad:        null | string;
      twitterAppNameGoogleplay: null | string;
      twitterAppIDGoogleplay:   null | string;
      twitterAppURLGoogleplay:  null | string;
      headings:                 Heading[];
      imgTags:                  ImgTag[];
      responseBody:             null | string;
      viewport:                 null | string;
      themeColor:               null | string;
      applicationName:          null | string;
      ogImageAlt:               null | string;
  }
  
  interface Favicon {
      rel:    null | string;
      href:   null | string;
      sizes?: null | string;
      type?:  null | string;
  }
  
  interface Heading {
      level: Level | null;
      text:  null | string;
  }
  
  enum Level {
      H1 = "h1",
      H2 = "h2",
      H3 = "h3",
      H4 = "h4",
  }
  
  interface ImgTag {
      src:     null | string;
      alt:     null | string;
      width?:  null | string;
      height?: null | string;
  }

  export default class metadataextractorWrapper {
    constructor(options: metadataextractorOptions);

    execute(callback: (error: any, data: metadataextractorResponse | null) => void): Promise<metadataextractorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: metadataextractorResponse | null) => void): Promise<metadataextractorResponse>;
    execute(query?: Record<string, any>): Promise<metadataextractorResponse>;
  }
}
