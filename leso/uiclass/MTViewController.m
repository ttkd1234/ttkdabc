//
//  MTViewController.m
//  leso
//
//  Created by 信息部 on 15/6/16.
//  Copyright (c) 2015年 信息部. All rights reserved.
//

#import "MTViewController.h"

@interface MTViewController ()

@end

@implementation MTViewController

@synthesize lt;
- (id)init
{
    self = [super init];
    if (self) {
        self.title = @"首页";
    }
    return self;
}

- (NSString *)tabImageName
{
    return @"Bund.bundle/images/homepage.png";
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBarHidden=YES;
    NSArray *array1_=@[@"我要查件"];
    NSArray *array2_=@[@"我要寄件"];
    NSArray *array3_=@[@"附近网点"];
    NSArray *array4_=@[@"工具"];
    lt=@{@"A":array1_, @"B":array2_, @"C":array3_,@"D":array4_};
    
}
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             SimpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier: SimpleTableIdentifier];
        //设定附加视图
        [cell setAccessoryType:UITableViewCellAccessoryDetailDisclosureButton];
        //        UITableViewCellAccessoryNone,                   // 没有标示
        //        UITableViewCellAccessoryDisclosureIndicator,    // 下一层标示
        //        UITableViewCellAccessoryDetailDisclosureButton, // 详情button
        //        UITableViewCellAccessoryCheckmark               // 勾选标记
        
        //设定选中cell时的cell的背影颜色
        cell.selectionStyle=UITableViewCellSelectionStyleBlue;     //选中时蓝色效果
        //        cell.selectionStyle=UITableViewCellSelectionStyleNone; //选中时没有颜色效果
        //        cell.selectionStyle=UITableViewCellSelectionStyleGray;  //选中时灰色效果
        //
        //        //自定义选中cell时的背景颜色
        //        UIView *selectedView = [[UIView alloc] initWithFrame:cell.contentView.frame];
        //        selectedView.backgroundColor = [UIColor orangeColor];
        //        cell.selectedBackgroundView = selectedView;
        //        [selectedView release];
        
        
        //        cell.selectionStyle=UITableViewCellAccessoryNone; //行不能被选中
        
    }
    
    //这是设置没选中之前的背景颜色
    cell.contentView.backgroundColor = [UIColor clearColor];
    cell.imageView.image=[UIImage imageNamed:@"Bund.bundle/images/homepage.png"];//未选cell时的图片
    //cell.imageView.highlightedImage=[UIImage imageNamed:@"Bund.bundle/images/mine.png"];//选中cell后的图片
    cell.textLabel.text=[[lt objectForKey:[[lt allKeys]objectAtIndex:indexPath.section]]objectAtIndex:indexPath.row];
    if (indexPath.section==0)
    {
       cell.imageView.image=[UIImage imageNamed:@"Bund.bundle/images/homepage.png"];//未选cell时的图片
    }
    if (indexPath.section==1)
    {
        cell.imageView.image=[UIImage imageNamed:@"Bund.bundle/images/mine.png"];//未选cell时的图片
    }
  
    
    
    return cell;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [[lt allKeys] count];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[lt objectForKey:[[lt allKeys]objectAtIndex:section]] count];
}


//================================================================
//行缩进
/*-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSUInteger row = [indexPath row];
    return row;
}*/

//选中Cell响应事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];//选中后的反显颜色即刻消失
   
    //得到当前选中的cell
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"cell=%@",cell);

}

//行将显示的时候调用，预加载行
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
   // NSLog(@"将要显示的行是\n cell=%@  \n indexpath=%@",cell,indexPath);
    
}

//选中之前执行,判断选中的行（阻止选中第一行）
-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section==0)
    {
        FindBillViewController *fbillViewContr=[[FindBillViewController alloc] init];
        [self presentViewController:fbillViewContr animated:YES  completion:nil];
    }
    if (indexPath.section==1)
    {
        //LoginViewController *loginViewContr=[[LoginViewController alloc] init];
        //RegisterViewController *registerContr=[[RegisterViewController alloc]init];
       // ForgetViewController *forgetContr=[[ForgetViewController alloc]init];
        //PasswordViewController *passContr=[[PasswordViewController alloc]init];
        //MaterialViewController *materContr=[[MaterialViewController alloc]init ];
        //ComplainViewController *complainContr=[[ComplainViewController alloc]init];
        //AddAddressViewController *addAddressContr=[[AddAddressViewController alloc]init];
        //FeedbackViewController *feedbackContr=[[FeedbackViewController alloc]init];
        //ModifyAddressViewController *modifyAddressContr=[[ModifyAddressViewController alloc]init];
        SentViewController *sentContr=[[SentViewController alloc]init];
        [self presentViewController:sentContr animated:YES  completion:nil];
    }
    NSUInteger row = [indexPath row];
    if (row == 0)
        return nil;
    return indexPath;
}

//编辑状态，点击删除时调用
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

//cell右边按钮格式为UITableViewCellAccessoryDetailDisclosureButton时，点击按扭时调用的方法
-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
   // NSLog(@"当前点击的详情button \n indexpath=%@",indexPath);
}

//右侧添加一个索引表
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    return [lt allKeys];
}

//划动cell是否出现del按钮
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
//设定横向滑动时是否出现删除按扭,（阻止第一行出现）
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==0) {
        return UITableViewCellEditingStyleNone;
    }
    else{
        return UITableViewCellEditingStyleDelete;
    }
    return UITableViewCellEditingStyleDelete;
}

//自定义划动时delete按钮内容
- (NSString *)tableView:(UITableView *)tableView
titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath{
    return @"删除这行";
    
}

//开始移动row时执行
-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath*)destinationIndexPath
{
    NSLog(@"sourceIndexPath=%@",sourceIndexPath);
    NSLog(@"sourceIndexPath=%@",destinationIndexPath);
}

//滑动可以编辑时执行
-(void)tableView:(UITableView *)tableView willBeginEditingRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"willBeginEditingRowAtIndexPath");
}
//将取消选中时执行, 也就是上次先中的行
-(NSIndexPath *)tableView:(UITableView *)tableView willDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"上次选中的行是  \n indexpath=%@",indexPath);
    return indexPath;
}


//让行可以移动
-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
}

//移动row时执行
-(NSIndexPath *)tableView:(UITableView *)tableView targetIndexPathForMoveFromRowAtIndexPath:(NSIndexPath *)sourceIndexPath toProposedIndexPath:(NSIndexPath *)proposedDestinationIndexPath
{
    NSLog(@"targetIndexPathForMoveFromRowAtIndexPath");
    //用于限制只在当前section下面才可以移动
    if(sourceIndexPath.section != proposedDestinationIndexPath.section){
        return sourceIndexPath;
    }
    return proposedDestinationIndexPath;
}
//添加标题和脚本信息
- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    //return [[lt allKeys] objectAtIndex:section];
    return  nil;
    
}
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    return @" ";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
