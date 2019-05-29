# QLIconFont
QLIconFont工具
## Introduce
  使用IconFont可以在没有设计师的情况下，使用一些图标,资源当中包含了我所常用的一些从阿里下载的图标，若需要自己的图标集，只要替换资源即可。
  
## Usage
  ```
  QLIconFontInfo *info1 = [QLIconFontInfo iconInfoWithText:@"我的\U0000e644" size:14 color:[UIColor redColor]];
  [self.lab setTextWithIconFontInfo:info1];
  
  [self.btn setTextWithIconFontInfo:info1 state:UIControlStateNormal];
  
  self.img.image = [UIImage imageWithIconInfo:info1];
 ```
  ## Example
  
  使用情况详见我的 [Demo仓库](https://github.com/burtworld/QLDemoProject).
  里面还包含其他的库
 
 
 ## Installation
 
 QLIconFont is available through [CocoaPods](https://cocoapods.org). To install
 it, simply add the following line to your Podfile:
 
 ```ruby
 pod 'QLIconFont'
 ```
 
 ## Author
 
 paramita, baqkoo007@aliyun.com
 
 ## License
 
 QLIconFont is available under the MIT license. See the LICENSE file for more info.
