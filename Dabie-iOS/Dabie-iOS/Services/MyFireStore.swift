//
//  MyFireStore.swift
//  Dabie-iOS
//
//  Created by 서원진 on 2024/03/03.
//
import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreSwift

class MyFireStore {
    static let shared = MyFireStore()
    
    private let db = Firestore.firestore()
    
    func fetchData(completion: @escaping ([AnwserModelInfo]?, Error?) -> Void) {
        db.collection("answers").getDocuments { (querySnapshot, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            if let documents = querySnapshot?.documents {
                let yourModels = documents.compactMap { document in
                    try? document.data(as: AnwserModelInfo.self)
                }
                completion(yourModels, nil)
            } else {
                completion(nil, nil)
            }
        }
    }
}
