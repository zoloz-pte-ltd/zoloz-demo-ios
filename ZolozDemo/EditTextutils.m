//
// MIT License
//
// Copyright (c) 2020 ZOLOZ-PTE-LTD
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
// 

#import "EditTextutils.h"
//永久存储对象
#define kSetUserDefaults(object, key)    ({  NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];  [defaults setObject:object forKey:key];   [defaults synchronize];  })
//获取对象
#define kGetUserDefaults(key) [[NSUserDefaults standardUserDefaults] objectForKey:key]

@implementation EditTextutils
+(UITextField *) setup:(UIView *) rootView
                 label:(NSString *) labelValue
          defaultValue:(NSString *) defaultValue
                 index:(int) index {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(5, 50 + 50 * index, 50, 30)];
    label.text = labelValue;
    [rootView addSubview:label];
    UITextField* textView = [[UITextField alloc] initWithFrame:CGRectMake(label.frame.origin.x + label.frame.size.width, label.frame.origin.y, 250, label.frame.size.height)];
    textView.placeholder = labelValue;
    NSString *saveValue = kGetUserDefaults(textView.placeholder);
    textView.text = saveValue? saveValue: defaultValue;
    textView.borderStyle = UITextBorderStyleLine;
    [rootView addSubview:textView];
    return textView;
}
+ (NSString *) getAndSave:(UITextField *) textView {
    NSString* value = textView.text;
    if (value) {
        kSetUserDefaults(value, textView.placeholder);
    }
    return value;
}
@end
