//
//  LoginViewController.m
//  Pods-TRULogining
//
//  Created by xupengju on 2018/12/18.
//

#import "LoginViewController.h"
//#import <TRUNetworking/NetWork.h>

@interface LoginViewController ()
@property (unsafe_unretained, nonatomic) IBOutlet UITextField *nameTF;
@property (unsafe_unretained, nonatomic) IBOutlet UITextField *passwordTF;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"登录";
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)loginAction:(id)sender {
    if (_nameTF.text.length && _passwordTF.text.length) {
//        BOOL isLogin = [NetWork loginWithName:_nameTF.text password:_passwordTF.text];
//        if (isLogin) {
//            NSLog(@"登录成功");
//        } else {
//            NSLog(@"登录失败");
//        }
    } else {
        NSLog(@"请输入账号和密码");
    }
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
