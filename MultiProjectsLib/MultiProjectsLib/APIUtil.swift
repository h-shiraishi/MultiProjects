//
// Created by Edelweiss on 2016/06/03.
// Copyright (c) 2016 Edelweiss. All rights reserved.
//

import Foundation
import AFNetworking
import Bolts

public class APIUtil {
    public static func callAPI() -> BFTask{
        let rssUrl = "http://rss.weather.yahoo.co.jp/rss/days/13.xml"
        
        let taskSource = BFTaskCompletionSource()
        let manager = AFHTTPSessionManager()
        manager.responseSerializer = AFXMLParserResponseSerializer()
        manager.GET(rssUrl, parameters: nil, progress: nil, success: {(task, response) -> Void in
            taskSource.setResult(response)
        }, failure: {(task, error) -> Void in
            taskSource.setError(error)
        })

        return taskSource.task;
    }
}
