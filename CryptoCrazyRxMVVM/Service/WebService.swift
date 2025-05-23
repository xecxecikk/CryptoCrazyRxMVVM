//
//  WebService.swift
//  CryptoCrazyRxMVVM
//
//  Created by XECE on 14.05.2025.
//

import Foundation

public enum CryptoError : Error {
    case serverError
    case parsingEror
}

class Webservice {
    
    func downloadCurrencies(url: URL, completion: @escaping (Result<[Crypto],CryptoError>) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let _ = error {
                completion(.failure(.serverError))
            } else if let data = data {
                
                let crytpoList = try? JSONDecoder().decode([Crypto].self, from: data)
                
                if let cryptoList = crytpoList {
                    completion(.success(cryptoList))
                } else {
                    completion(.failure(.parsingEror))
                }
                
            }
            
        }.resume()
        
    }
    
}
