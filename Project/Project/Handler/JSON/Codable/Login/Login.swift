import Foundation

public final class Login: Codable, Equatable, Identifiable {
    public let id: UUID
    public let uuid: String
    public let username: String
    public let password: String
    public let salt: String
    public let md5: String
    public let sha1: String
    public let sha256: String

    init(uuid: String?, username: String?, password: String?, salt: String?, md5: String?, sha1: String?, sha256: String?) {
        self.uuid = uuid ?? ""
        self.username = username ?? ""
        self.password = password ?? ""
        self.salt = salt ?? ""
        self.md5 = md5 ?? ""
        self.sha1 = sha1 ?? ""
        self.sha256 = sha256 ?? ""
        self.id = .init()
    }
    
    public static func ==(lhs: Login, rhs: Login) -> Bool {
        return lhs.uuid == rhs.uuid && lhs.username == rhs.username && lhs.password == rhs.password && lhs.salt == rhs.salt && lhs.md5 == rhs.md5 && lhs.sha1 == rhs.sha1 && lhs.sha256 == rhs.sha256
    }

    private enum CodingKeys: String, CodingKey {
        case uuid = "uuid"
        case username = "username"
        case password = "password"
        case salt = "salt"
        case md5 = "md5"
        case sha1 = "sha1"
        case sha256 = "sha256"
    }
    
    required public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        uuid = try values.decode(String.self, forKey: .uuid)
        username = try values.decode(String.self, forKey: .username)
        password = try values.decode(String.self, forKey: .password)
        salt = try values.decode(String.self, forKey: .salt)
        md5 = try values.decode(String.self, forKey: .md5)
        sha1 = try values.decode(String.self, forKey: .sha1)
        sha256 = try values.decode(String.self, forKey: .sha256)
        id = UUID()
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(uuid, forKey: .uuid)
        try container.encode(username, forKey: .username)
        try container.encode(password, forKey: .password)
        try container.encode(salt, forKey: .salt)
        try container.encode(md5, forKey: .md5)
        try container.encode(sha1, forKey: .sha1)
        try container.encode(sha256, forKey: .sha256)
    }

}
