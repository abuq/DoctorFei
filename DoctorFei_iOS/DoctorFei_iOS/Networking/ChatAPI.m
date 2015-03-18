//
//  ChatAPI.m
//  DoctorFei_iOS
//
//  Created by GuJunjia on 14/12/5.
//
//

#import "ChatAPI.h"
#define kMethodGetChat @"get.user.chatlog"
#define kMethodSendMessage @"set.doctorchat.send"
#define kMethodUploadAudio @"set.audio.add"
@implementation ChatAPI
+ (void)getChatWithParameters: (id)parameters success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    [[self sharedManager]defaultGetWithMethod:kMethodGetChat WithParameters:parameters success:success failure:failure];
}

+ (void)sendMessageWithParameters: (id)parameters success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    [[self sharedManager]defaultGetWithMethod:kMethodSendMessage WithParameters:parameters success:success failure:failure];
}

+ (void)uploadAudioWithParameters: (id)parameters WithBodyParameters:(id)bodyParameters success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure {
    [[self sharedManager]defaultPostWithMethod:kMethodUploadAudio WithParameters:parameters WithBodyParameters:bodyParameters success:success failure:failure];
}
@end
