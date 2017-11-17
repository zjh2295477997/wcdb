/*
 * Tencent is pleased to support the open source community by making
 * WCDB available.
 *
 * Copyright (C) 2017 THL A29 Limited, a Tencent company.
 * All rights reserved.
 *
 * Licensed under the BSD 3-Clause License (the "License"); you may not use
 * this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 *       https://opensource.org/licenses/BSD-3-Clause
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Foundation
import WCDB

class SampleFTSOrigin: WCDB.CodableTable {
    var localID: Int? = nil
    var name: String? = nil
    var content: String? = nil
    
    required init() {}

    //WCDB
    static var objectRelationalMapping: TableBinding = TableBinding(SampleFTSOrigin.self)

    var isAutoIncrement: Bool = false
    var lastInsertedRowID: Int64 = 0
}

//WCDB
extension SampleFTSOrigin {
    static func columnBindings() -> [AnyColumnBinding] {
        return [
            ColumnBinding(\SampleFTSOrigin.localID, isPrimary: true, isAutoIncrement: true),
            ColumnBinding(\SampleFTSOrigin.name),
            ColumnBinding(\SampleFTSOrigin.content)]
    }
}
