//
//  NewsListViewModel.swift
//  MachineTest
//
//  Created by Mounika Madishetti on 27/08/21.
//

import Foundation
class NewsListViewModel {
    func getAPIResponse(completionHandler: @escaping ([Article]) -> Void ) {
        let apiClient = APIClient()
        
        let requestParams = RequestParams(urlParameters: ["country":"us", "apiKey":"55c23c9f979d46e5bade55a65afca43b"], bodyParameters: nil)
        let request: APIData = InputRequest(path: "top-headlines", method: .get, parameters: requestParams, headers: nil, dataType: .JSON)
        apiClient.fetch(request: request, basePath: "https://newsapi.org/v2/", keyDecodingStrategy: .convertFromSnakeCase) { (result: Result<NewsListResponse, NetworkError>) in
            DispatchQueue.main.async {
            switch result {
            case .success(let data):
                print(data)
                completionHandler(data.articles)
            case .failure(let error):
                print(error)
            }
            }

        }
//        apiClient.fetch(request: <#T##APIData#>, basePath: <#T##String#>, keyDecodingStrategy: <#T##JSONDecoder.KeyDecodingStrategy#>, completionHandler: <#T##((Result<Decodable & Encodable, NetworkError>) -> Void)##((Result<Decodable & Encodable, NetworkError>) -> Void)##(Result<Decodable & Encodable, NetworkError>) -> Void#>)
//
//        apiClient.fetch(request: <#T##APIData#>, basePath: <#T##String#>, success: <#T##NetworkSuccessHandler##NetworkSuccessHandler##(Data, URLResponse?) -> Void#>, failure: <#T##NetworkFailureHandler##NetworkFailureHandler##(Data?, URLResponse?, NetworkError) -> Void#>)
   }
}
