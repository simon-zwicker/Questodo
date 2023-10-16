// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal enum Assets {
    internal static let accentColor = ColorAsset(name: "AccentColor")
    internal static let bgLvl1 = ImageAsset(name: "bg-lvl-1")
    internal static let bgDesert = ImageAsset(name: "bgDesert")
    internal static let bgForest = ImageAsset(name: "bgForest")
    internal static let bgGras = ImageAsset(name: "bgGras")
    internal static let gold = ImageAsset(name: "gold")
    internal static let health = ImageAsset(name: "health")
    internal static let sword = ImageAsset(name: "sword")
    internal static let torsoLeatherBrown = ImageAsset(name: "torso_leather_brown")
  }
  internal enum Characters {
    internal enum Body {
      internal static let bodyAmber = ImageAsset(name: "body_amber")
      internal static let bodyBlack = ImageAsset(name: "body_black")
      internal static let bodyBrown = ImageAsset(name: "body_brown")
      internal static let bodyLight = ImageAsset(name: "body_light")
    }
    internal enum Hairs {
      internal static let hairMessyAsh = ImageAsset(name: "hair_messy_ash")
      internal static let hairMessyBlack = ImageAsset(name: "hair_messy_black")
      internal static let hairMessyBlonde = ImageAsset(name: "hair_messy_blonde")
      internal static let hairMessyDarkBrown = ImageAsset(name: "hair_messy_dark_brown")
      internal static let hairMessyGray = ImageAsset(name: "hair_messy_gray")
      internal static let hairMessyLightBrown = ImageAsset(name: "hair_messy_light_brown")
      internal static let hairMessyRedhead = ImageAsset(name: "hair_messy_redhead")
      internal static let hairMessyWhite = ImageAsset(name: "hair_messy_white")
      internal static let hairPageAsh = ImageAsset(name: "hair_page_ash")
      internal static let hairPageBlack = ImageAsset(name: "hair_page_black")
      internal static let hairPageBlonde = ImageAsset(name: "hair_page_blonde")
      internal static let hairPageDarkBrown = ImageAsset(name: "hair_page_dark_brown")
      internal static let hairPageGray = ImageAsset(name: "hair_page_gray")
      internal static let hairPageLightBrown = ImageAsset(name: "hair_page_light_brown")
      internal static let hairPageRedhead = ImageAsset(name: "hair_page_redhead")
      internal static let hairPageWhite = ImageAsset(name: "hair_page_white")
      internal static let hairPixieAsh = ImageAsset(name: "hair_pixie_ash")
      internal static let hairPixieBlack = ImageAsset(name: "hair_pixie_black")
      internal static let hairPixieBlonde = ImageAsset(name: "hair_pixie_blonde")
      internal static let hairPixieDarkBrown = ImageAsset(name: "hair_pixie_dark_brown")
      internal static let hairPixieGray = ImageAsset(name: "hair_pixie_gray")
      internal static let hairPixieLightBrown = ImageAsset(name: "hair_pixie_light_brown")
      internal static let hairPixieRedhead = ImageAsset(name: "hair_pixie_redhead")
      internal static let hairPixieWhite = ImageAsset(name: "hair_pixie_white")
      internal static let hairSpikedAsh = ImageAsset(name: "hair_spiked_ash")
      internal static let hairSpikedBlack = ImageAsset(name: "hair_spiked_black")
      internal static let hairSpikedBlonde = ImageAsset(name: "hair_spiked_blonde")
      internal static let hairSpikedDarkBrown = ImageAsset(name: "hair_spiked_dark_brown")
      internal static let hairSpikedGray = ImageAsset(name: "hair_spiked_gray")
      internal static let hairSpikedLightBrown = ImageAsset(name: "hair_spiked_light_brown")
      internal static let hairSpikedRedhead = ImageAsset(name: "hair_spiked_redhead")
      internal static let hairSpikedWhite = ImageAsset(name: "hair_spiked_white")
    }
    internal enum Head {
      internal static let headAmber = ImageAsset(name: "head_amber")
      internal static let headBlack = ImageAsset(name: "head_black")
      internal static let headBrown = ImageAsset(name: "head_brown")
      internal static let headLight = ImageAsset(name: "head_light")
    }
    internal enum Nose {
      internal static let noseAmber = ImageAsset(name: "nose_amber")
      internal static let noseBlack = ImageAsset(name: "nose_black")
      internal static let noseBrown = ImageAsset(name: "nose_brown")
      internal static let noseLight = ImageAsset(name: "nose_light")
    }
  }
  internal enum Colors {
    internal enum Character {
      internal static let hairAsh = ColorAsset(name: "hairAsh")
      internal static let hairBlack = ColorAsset(name: "hairBlack")
      internal static let hairBlonde = ColorAsset(name: "hairBlonde")
      internal static let hairDarkBrown = ColorAsset(name: "hairDarkBrown")
      internal static let hairGray = ColorAsset(name: "hairGray")
      internal static let hairLightBrown = ColorAsset(name: "hairLightBrown")
      internal static let hairRedhead = ColorAsset(name: "hairRedhead")
      internal static let hairWhite = ColorAsset(name: "hairWhite")
      internal static let skinAmber = ColorAsset(name: "skinAmber")
      internal static let skinBlack = ColorAsset(name: "skinBlack")
      internal static let skinBrown = ColorAsset(name: "skinBrown")
      internal static let skinLight = ColorAsset(name: "skinLight")
    }
    internal static let mainBackground = ColorAsset(name: "mainBackground")
    internal static let textNormal = ColorAsset(name: "textNormal")
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  internal private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  #if os(iOS) || os(tvOS)
  @available(iOS 11.0, tvOS 11.0, *)
  internal func color(compatibleWith traitCollection: UITraitCollection) -> Color {
    let bundle = BundleToken.bundle
    guard let color = Color(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal private(set) lazy var swiftUIColor: SwiftUI.Color = {
    SwiftUI.Color(asset: self)
  }()
  #endif

  fileprivate init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Color {
  init(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }
}
#endif

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, macOS 10.7, *)
  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if os(iOS) || os(tvOS)
  @available(iOS 8.0, tvOS 9.0, *)
  internal func image(compatibleWith traitCollection: UITraitCollection) -> Image {
    let bundle = BundleToken.bundle
    guard let result = Image(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

internal extension ImageAsset.Image {
  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, *)
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Image {
  init(asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }

  init(asset: ImageAsset, label: Text) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
