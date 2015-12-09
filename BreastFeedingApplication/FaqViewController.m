//
//  FaqViewController.m
//  BreastFeedingApplication
//
//  Created by Anil Siruvolu on 12/8/15.
//  Copyright © 2015 Anil Siruvolu. All rights reserved.
//

#import "FaqViewController.h"


@interface FaqViewController ()
@end

@implementation FaqViewController

@synthesize webView = _webView;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    NSString *urlString = @"http://www.nursingmothers.org/html/faq.html";
//    NSURL *url = [NSURL URLWithString:urlString];
//    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
//    [_webView loadRequest:urlRequest];
    
    self.webView.delegate = self;
    
    NSURL *url = [NSURL URLWithString:@"http://www.nursingmothers.org/html/faq.html"];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:url];
    self.webView.scalesPageToFit = YES;
    [self.webView loadRequest:requestURL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
   
    [self.navigationItem setHidesBackButton:YES animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
