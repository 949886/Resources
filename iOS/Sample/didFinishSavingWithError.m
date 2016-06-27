- (void)image: (UIImage *) image didFinishSavingWithError: (NSError *) error contextInfo: (void *) contextInfo
{   
	NSString *msg = nil ;	
	if(error != NULL) msg = @"保存失败，请确认相册权限已打开";
	else msg = @"保存成功" ;

	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示"
							message:msg
							delegate:self
							cancelButtonTitle:@"确定"
                                             	otherButtonTitles:nil];
	[alert show];
}