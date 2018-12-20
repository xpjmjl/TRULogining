//
//  LoginViewController.m
//  Pods-TRULogining
//
//  Created by xupengju on 2018/12/18.
//

#import "LoginViewController.h"
#import <XPJNetworking/NetWork.h>

@interface LoginViewController ()
@property (unsafe_unretained, nonatomic) IBOutlet UITextField *nameTF;
@property (unsafe_unretained, nonatomic) IBOutlet UITextField *passwordTF;

@end

@implementation LoginViewController

+ (NSBundle *)wg_subBundleWithBundleName:(NSString *)bundleName targetClass:(Class)targetClass{
    //并没有拿到子bundle
    NSBundle *bundle = [NSBundle bundleForClass:targetClass];
    //在这个路径下找到子bundle的路径
    NSString *path = [bundle pathForResource:bundleName ofType:@"bundle"];
    //根据路径拿到子bundle
    return path?[NSBundle bundleWithPath:path]:[NSBundle mainBundle];
    
    /*
     这种方式也可以
     NSBundle *bundle = [NSBundle bundleForClass:targetClass];
     NSURL *url = [bundle URLForResource:bundleName withExtension:@"bundle"];
     return path?[NSBundle bundleWithURL:url]:[NSBundle mainBundle];
     */
}

- (instancetype)init
{
    self = [super initWithNibName:@"LoginViewController" bundle:[LoginViewController wg_subBundleWithBundleName:@"XPJLogining" targetClass:[self class]]];
    
    if (self) {

    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"登录";
    _nameTF.text = self.name;
    _passwordTF.text = self.password;
}
- (IBAction)loginAction:(id)sender {
    if (_nameTF.text.length && _passwordTF.text.length) {
        BOOL isLogin = [NetWork loginWithName:_nameTF.text password:_passwordTF.text];
        if (isLogin) {
            NSLog(@"登录成功");
        } else {
            NSLog(@"登录失败");
        }
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
