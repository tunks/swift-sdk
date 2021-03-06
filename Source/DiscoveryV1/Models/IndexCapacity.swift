/**
 * Copyright IBM Corporation 2018
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation

/**
 Details about the resource usage and capacity of the environment.
 */
public struct IndexCapacity: Decodable {

    /**
     Summary of the document usage statistics for the environment.
     */
    public var documents: EnvironmentDocuments?

    /**
     Summary of the disk usage of the environment.
     */
    public var diskUsage: DiskUsage?

    /**
     Summary of the collection usage in the environment.
     */
    public var collections: CollectionUsage?

    /**
     **Deprecated**: Summary of the memory usage of the environment.
     */
    public var memoryUsage: MemoryUsage?

    // Map each property name to the key that shall be used for encoding/decoding.
    private enum CodingKeys: String, CodingKey {
        case documents = "documents"
        case diskUsage = "disk_usage"
        case collections = "collections"
        case memoryUsage = "memory_usage"
    }

}
