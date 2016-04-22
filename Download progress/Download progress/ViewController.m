//
//  ViewController.m
//  Download progress
//
//  Created by  江苏 on 16/4/22.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import "DownloadView.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet DownloadView *downloadView;
@property (strong, nonatomic) IBOutlet UILabel *downLabel;
@property (strong, nonatomic) IBOutlet UISlider *downSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.downSlider.value=0;
    
}
- (IBAction)DownloadSliderValueChanged:(UISlider *)sender {
    
    self.downloadView.value=sender.value;
    self.downLabel.text=[NSString stringWithFormat:@"%.2f%%",sender.value*100];
}



@end
