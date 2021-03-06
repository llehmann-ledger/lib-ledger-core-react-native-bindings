// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from http_client.djinni

#import "LGHttpReadBodyResult.h"
#import <Foundation/Foundation.h>


/** Class representing an Http connection. */
@protocol LGHttpUrlConnection

/**
 * Gets the HTTP response status code.
 * @return The HTTP response status code
 */
- (int32_t)getStatusCode;

/**
 * Gets the HTTP response status text.
 * @return The HTTP response status text
 */
- (nonnull NSString *)getStatusText;

/**
 * Gets the HTTP response headers.
 * @return The HTTP response headers
 */
- (nonnull NSDictionary<NSString *, NSString *> *)getHeaders;

/**
 * Reads available HTTP response body. This method will be called multiple times until it returns a empty bytes array.
 * @returns A chunk of the body data wrapped into a HttpReadBodyResult (for error management)
 */
- (nonnull LGHttpReadBodyResult *)readBody;

@end
