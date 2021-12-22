import UIKit
import NotionSwift

let notion = NotionClient(accessKeyProvider: StringAccessKeyProvider(accessKey: "secret_j865tuYabOQtv3mXsO4zKDWeVfX9DSpgNoNiF9pzd3w"))
let databaseId = Database.Identifier("c7220d7542f34e668eb0934141441634")
notion.databaseQuery(databaseId: databaseId) { data in
    data.map { objects in
        objects.results.map { pages in
            pages.properties.map { property in
                print(property.value.type)
            }
        }
    }
}

