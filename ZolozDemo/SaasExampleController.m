//
// MIT License
//
// Copyright (c) 2020 ZOLOZ-PTE-LTD
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
// 

#import "SaasExampleController.h"

#import <hummer/ZLZFacade.h>
#import <hummer/ZLZRequest.h>
#import <hummer/ZLZResponse.h>
#import "EditTextutils.h"


@interface SaasExampleController ()
@property (nonatomic,strong) UITextField *host;
@property (nonatomic,strong) UITextField *ref;
@property (nonatomic,strong) UITextField *level;
@property (nonatomic,strong) UITextField *docType;
@end

@implementation SaasExampleController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"ZOLOZ Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    _host = [EditTextutils setup:self.view label:@"HOST" defaultValue:@"http://lan_ip:lan_port" index:1];
    _ref = [EditTextutils setup:self.view label:@"API" defaultValue:@"/api/realid/initialize" index:2];
    _docType = [EditTextutils setup:self.view label:@"DOC" defaultValue:@"00000001003" index:3];
    _level = [EditTextutils setup:self.view label:@"LEVEL" defaultValue:@"REALID0002" index: 4];
    
    UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake(20, 50 + 50 * 5, 200, 50)];
    btn2.backgroundColor = [UIColor darkGrayColor];
    [btn2 setTitle:@"start zoloz " forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(startsaas) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
}



- (void)startsaas {
    NSString * urlStr = [NSString stringWithFormat:@"%@%@", [EditTextutils getAndSave:_host], [EditTextutils getAndSave:_ref]];

    NSString *metainfo = [ZLZFacade getMetaInfo];
 
    NSDictionary *_paramDic = @{
        @"metaInfo":metainfo,
        @"serviceLevel": [EditTextutils getAndSave:_level],
        @"docType": [EditTextutils getAndSave:_docType]
    };

    
    
    
    NSURL *url = [NSURL URLWithString:urlStr];

    [self requestWithUrl:url bodyDic:_paramDic completionHandler:^(NSDictionary *data) {
             
        NSMutableDictionary *bizParam = [NSMutableDictionary dictionary];
        [bizParam setObject:self forKey:kZLZCurrentViewControllerKey];

        if ([data objectForKey:@"rsaPubKey"]) {
             [bizParam setObject:[data objectForKey:@"rsaPubKey"] forKey:kZLZPubkey];
        }
              
        NSString *clientConfig = [data objectForKey:@"clientCfg"];
        NSString *transactionId = [data objectForKey:@"transactionId"];
        ZLZRequest *request = [[ZLZRequest alloc] initWithzlzConfig:clientConfig bizConfig:bizParam];
        [[ZLZFacade sharedInstance] startWithRequest:request completeCallback:^(ZLZResponse * response) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [self checkResultWithId:transactionId];
            });
        } interruptCallback:^(ZLZResponse * response) {
            [self simpleAlertWithTitle:@"interrupt" andMessage:[NSString stringWithFormat:@"retcode:%@,extinfo:%@",response.retcode,response.extInfo]];
        }];
        
    }];
    
}

- (void)checkResultWithId:(NSString*)transactionId{
    NSString *checkResultServerUrl = [NSString stringWithFormat:@"%@%@",[EditTextutils getAndSave:_host], [EditTextutils getAndSave:_ref]];
    checkResultServerUrl = [checkResultServerUrl stringByReplacingOccurrencesOfString:@"initialize" withString:@"checkresult"];
    NSDictionary *_paramDic = @{
        @"transactionId":transactionId,
    };
    [self requestWithUrl:[NSURL URLWithString:checkResultServerUrl] bodyDic:_paramDic completionHandler:^(NSDictionary *data) {
        [self simpleAlertWithTitle:@"check Result" andMessage:[NSString stringWithFormat:@"%@",data]];
    }];
    
}


- (void)requestWithUrl:(NSURL*)url bodyDic:(NSDictionary*)initDic completionHandler:(void (^)(NSDictionary* data))block{
    
  
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"POST";
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-type"];
    
    NSString *bodyJson = [[NSString alloc]initWithData:[NSJSONSerialization dataWithJSONObject:initDic options:NSJSONWritingPrettyPrinted error:nil] encoding:NSUTF8StringEncoding];
    request.HTTPBody = [bodyJson dataUsingEncoding:NSUTF8StringEncoding];
    
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
                                      {
                                          NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
                                          if(httpResponse.statusCode == 200)
                                          {
                                              NSError *parseError = nil;
                                              NSDictionary *retDict = [NSJSONSerialization JSONObjectWithData:data options:0 error:&parseError];
                                              block(retDict);
                                              
                                          
                                          }
                                          else
                                          {
                                              [self simpleAlertWithTitle:@"network error" andMessage:@"network error"];
                                          }
                                      }];
    [dataTask resume];
    
}

- (void)simpleAlertWithTitle:(NSString*)title andMessage:(NSString*)message{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *alertOk = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {

    }];
    [alertController addAction:alertOk];
    dispatch_async(dispatch_get_main_queue(), ^{
       [self presentViewController:alertController animated:YES completion:nil];
    });
    
    
}

@end

