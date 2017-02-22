//
//  ViewController.m
//  DWParticleEmitterTest
//
//  Created by dwng.vip on 2017/2/22.
//  Copyright © 2017年 dwang. All rights reserved.
//

#import "ViewController.h"
#import "DWParticleEmitter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DWParticleEmitter *emitter = [[DWParticleEmitter alloc] init];
    
    emitter.cellContents = @[[UIImage imageNamed:@"yuandanr"]];
    
    emitter.caEmitterMode = caVolume;
    
    emitter.caEmitterShape = caLine;
    
    emitter.cellVelocity = -10.0f;
    
    emitter.cellYAcceleration = 10.0f;
    
    emitter.cellEmissionLatitude = -M_PI / 2;
    
    emitter.cellEmissionRange = M_PI / 4;
    
    emitter.cellSpin = 0.8*M_PI;
    
    emitter.cellSpinRange = 10.0f;
    
    emitter.cellScale = 0.5f;
    
    emitter.cellScaleSpeed = 0.1f;
    
    emitter.cellScaleRange = 1.0f;
    
    emitter.cellColor = [UIColor colorWithRed:0.6f/255.0f green:0.6f/255.0f blue:0.6f/255.0f alpha:1.0f];
    
    emitter.cellRedRange = 1.0f;
    
    emitter.cellRedSpeed = 0.1f;
    
    emitter.cellBlueRange = 1.0f;
    
    emitter.cellBlueSpeed = 0.1f;
    
    emitter.cellGreenRange = 1.0f;
    
    emitter.cellGreenSpeed = 0.1f;
    
    emitter.cellAlphaRange = 1.0f;
    
    emitter.cellGreenSpeed = 0.05f;
    
    [emitter addEmitterLayerPosition:CGPointMake(self.view.frame.size.width/2, -22) emitterSize:CGSizeMake(self.view.frame.size.width, 0.0) view:self.view];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"粒子效果不会影响View操作" delegate:nil cancelButtonTitle:@"知道了" otherButtonTitles:nil, nil];
    
    [alert show];
}

@end
