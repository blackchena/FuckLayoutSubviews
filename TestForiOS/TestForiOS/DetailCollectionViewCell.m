//
//  DetailCollectionViewCell.m
//  TestForiOS
//
//  Created by Xuan on 9/15/15.
//  Copyright © 2015 Wingzero. All rights reserved.
//

#import "DetailCollectionViewCell.h"

@implementation DetailCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
    [super awakeFromNib];
    self.imgView.translatesAutoresizingMaskIntoConstraints = NO;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    NSLog(@"%@", NSStringFromCGRect(self.imgView.bounds));
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"%@", NSStringFromCGRect(self.imgView.bounds));
    });
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    NSLog(@"rect %@", NSStringFromCGRect(self.imgView.bounds));
}

@end
