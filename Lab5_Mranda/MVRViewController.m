//
//  MVRViewController.m
//  Lab5_Mranda
//
//  Created by ITCS2825 Kozlevcar on 2/27/15.
//  Copyright (c) 2015 Lab5_Mranda. All rights reserved.
//

#import "MVRViewController.h"

@interface MVRViewController ()
- (IBAction)segOne:(UISegmentedControl *)sender;
- (IBAction)segTwo:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UIWebView *webViewOne;
@property (weak, nonatomic) IBOutlet UIWebView *webViewTwo;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation MVRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //initial web views
    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];    //load view one as google
    [self.webViewOne loadRequest:[NSURLRequest requestWithURL:url]];
    NSURL *urlTwo = [NSURL URLWithString:@"http://www.gamestop.com"];  //load view two as gamestop
    [self.webViewTwo loadRequest:[NSURLRequest requestWithURL:urlTwo]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated //contols for the scrollview
{
    [super viewDidAppear:animated];
    self.scrollView.contentSize = CGSizeMake(280, 1525);
}

- (IBAction)segOne:(UISegmentedControl *)sender
{
    switch (sender.selectedSegmentIndex)
    {
        case 0: //google selected
        {
           NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
            [self.webViewOne loadRequest:[NSURLRequest requestWithURL:url]];
            break;
        }
        case 1: //Apple selected
        {
            NSURL *url = [[NSURL alloc] initWithString:[NSString stringWithFormat:@"http://www.Apple.com"]];
            [self.webViewOne loadRequest:[NSURLRequest requestWithURL:url]];
            break;
        }
        case 2: //Yahoo selected
        {
            NSURL *url = [[NSURL alloc] initWithString:[NSString stringWithFormat:@"http://www.Yahoo.com"]];
            [self.webViewOne loadRequest:[NSURLRequest requestWithURL:url]];
            break;
        }
        default:
            break;
    }
}

- (IBAction)segTwo:(UISegmentedControl *)sender
{
    switch (sender.selectedSegmentIndex)
    {
        case 0: //Gamestop selected
        {
            NSURL *url = [NSURL URLWithString:@"http://www.gamestop.com"];
            [self.webViewTwo loadRequest:[NSURLRequest requestWithURL:url]];
            break;
        }
        case 1: //gamespotselected
        {
            NSURL *url = [[NSURL alloc] initWithString:[NSString stringWithFormat:@"http://www.gamespot.com"]];
            [self.webViewTwo loadRequest:[NSURLRequest requestWithURL:url]];
            break;
        }
        case 2: //pcworld selected
        {
            NSURL *url = [[NSURL alloc] initWithString:[NSString stringWithFormat:@"http://www.pcworld.com"]];
            [self.webViewTwo loadRequest:[NSURLRequest requestWithURL:url]];
            break;
        }
        default:
            break;
    }
}
@end
