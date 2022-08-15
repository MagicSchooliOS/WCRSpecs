Pod::Spec.new do |s| 
  s.name = "WCRLiveUI" 
  s.version = "2.1.110"
  s.summary = "直播云是好未来教育集团倾力打造的在线教育直播平台。提供一对一、小班课、大班课多种教学场景的业务模式，支持使用电脑、平板、手机、网页等多种设备类型，让精彩在线课堂瞬呈眼前。" 
  s.description = "WCRLiveUI是直播云基于多年实战经验，提供的一套标准在线教室模板，主要包括师生音视频互动、课件展示、涂鸦操作、聊天等功能，包含一套完整的在线教室 UI。WCRLiveUI提供了快捷的建课接口，只需要简单传参即可快速进入教室，集成工作量小，便于快速接入、开发，适合需快速上线的机构。" 
  s.homepage = "https://gitlab.com/weclassroomios/wcrliveuipod" 
  s.license = { :type => "MIT", :file => "LICENSE" } 
  s.author = { "weclassroom" => "weclassroom@icloud.com" } 
  s.platform = :ios, "9.0"
  s.source = {:http => "https://cloudclass-static.oss-cn-beijing.aliyuncs.com/static/zby-sdk/zby-ios-sdk/WCRLiveUI/#{s.version}/frameworks.zip" } 
  s.vendored_frameworks = ["frameworks/*.framework"]
end