//
//  GICScrollView.m
//  GICXMLLayout
//
//  Created by 龚海伟 on 2018/7/6.
//

#import "GICScrollView.h"
#import "GICPanel.h"
#import "GICBoolConverter.h"

@implementation GICScrollView
+(NSString *)gic_elementName{
    return @"scroll-view";
}

+(NSDictionary<NSString *,GICValueConverter *> *)gic_elementAttributs{
    return @{
             @"show-ver-scroll":[[GICBoolConverter alloc] initWithPropertySetter:^(NSObject *target, id value) {
                 [[(GICScrollView *)target view] setShowsVerticalScrollIndicator:[value boolValue]];
             }],
             @"show-hor-scroll":[[GICBoolConverter alloc] initWithPropertySetter:^(NSObject *target, id value) {
                 [[(GICScrollView *)target view] setShowsHorizontalScrollIndicator:[value boolValue]];
             }],
             };;
}

-(id)init{
    self =[super init];
    self.automaticallyManagesSubnodes = YES;
    self.automaticallyManagesContentSize = YES;
    return self;
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize
{
//    ASStackLayoutSpec *temp = [ASStackLayoutSpec verticalStackLayoutSpec];
//    temp.children = @[[self gic_layoutSpecThatFits:constrainedSize]];
//    return temp;
    return [self gic_layoutSpecThatFits:constrainedSize];
}
//-(void)onDidLoad:(ASDisplayNodeDidLoadBlock)body{
//    [super onDidLoad:body];
//
//}
//
//-(void)layout{
//    [super layout];
//    [GICUtils mainThreadExcu:^{
//        if (@available(iOS 11.0, *)) {
//            self.view.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
//        } else {
//            // Fallback on earlier versions
//        }
//    }];
//}
@end
