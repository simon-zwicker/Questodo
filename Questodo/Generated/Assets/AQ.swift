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
    internal static let swordButton = ImageAsset(name: "swordButton")
    internal static let torsoLeatherBrown = ImageAsset(name: "torso_leather_brown")
  }
  internal enum Characters {
    internal enum Body {
      internal static let bodyFAmber = ImageAsset(name: "body_f_amber")
      internal static let bodyFBlack = ImageAsset(name: "body_f_black")
      internal static let bodyFBrown = ImageAsset(name: "body_f_brown")
      internal static let bodyFLight = ImageAsset(name: "body_f_light")
      internal static let bodyMAmber = ImageAsset(name: "body_m_amber")
      internal static let bodyMBlack = ImageAsset(name: "body_m_black")
      internal static let bodyMBrown = ImageAsset(name: "body_m_brown")
      internal static let bodyMLight = ImageAsset(name: "body_m_light")
    }
    internal enum Equip {
      internal enum Chest {
        internal static let chestFDefault = ImageAsset(name: "chest_f_default")
        internal static let chestMDefault = ImageAsset(name: "chest_m_default")
      }
      internal enum Pant {
        internal static let pantFDefault = ImageAsset(name: "pant_f_default")
        internal static let pantMDefault = ImageAsset(name: "pant_m_default")
      }
      internal enum Shoe {
        internal static let shoeFDefault = ImageAsset(name: "shoe_f_default")
        internal static let shoeMDefault = ImageAsset(name: "shoe_m_default")
      }
    }
    internal enum Hairs {
      internal static let hairIdolFAsh = ImageAsset(name: "hair_idol_f_ash")
      internal static let hairIdolFBlack = ImageAsset(name: "hair_idol_f_black")
      internal static let hairIdolFBlonde = ImageAsset(name: "hair_idol_f_blonde")
      internal static let hairIdolFBlue = ImageAsset(name: "hair_idol_f_blue")
      internal static let hairIdolFCarrot = ImageAsset(name: "hair_idol_f_carrot")
      internal static let hairIdolFChestnut = ImageAsset(name: "hair_idol_f_chestnut")
      internal static let hairIdolFDarkBrown = ImageAsset(name: "hair_idol_f_dark_brown")
      internal static let hairIdolFDarkGray = ImageAsset(name: "hair_idol_f_dark_gray")
      internal static let hairIdolFGinger = ImageAsset(name: "hair_idol_f_ginger")
      internal static let hairIdolFGold = ImageAsset(name: "hair_idol_f_gold")
      internal static let hairIdolFGray = ImageAsset(name: "hair_idol_f_gray")
      internal static let hairIdolFGreen = ImageAsset(name: "hair_idol_f_green")
      internal static let hairIdolFLightBrown = ImageAsset(name: "hair_idol_f_light_brown")
      internal static let hairIdolFNavy = ImageAsset(name: "hair_idol_f_navy")
      internal static let hairIdolFOrange = ImageAsset(name: "hair_idol_f_orange")
      internal static let hairIdolFPink = ImageAsset(name: "hair_idol_f_pink")
      internal static let hairIdolFPlatinum = ImageAsset(name: "hair_idol_f_platinum")
      internal static let hairIdolFPurple = ImageAsset(name: "hair_idol_f_purple")
      internal static let hairIdolFRaven = ImageAsset(name: "hair_idol_f_raven")
      internal static let hairIdolFRed = ImageAsset(name: "hair_idol_f_red")
      internal static let hairIdolFRedhead = ImageAsset(name: "hair_idol_f_redhead")
      internal static let hairIdolFRose = ImageAsset(name: "hair_idol_f_rose")
      internal static let hairIdolFSandy = ImageAsset(name: "hair_idol_f_sandy")
      internal static let hairIdolFStrawberry = ImageAsset(name: "hair_idol_f_strawberry")
      internal static let hairIdolFViolet = ImageAsset(name: "hair_idol_f_violet")
      internal static let hairIdolFWhite = ImageAsset(name: "hair_idol_f_white")
      internal static let hairIdolMAsh = ImageAsset(name: "hair_idol_m_ash")
      internal static let hairIdolMBlack = ImageAsset(name: "hair_idol_m_black")
      internal static let hairIdolMBlonde = ImageAsset(name: "hair_idol_m_blonde")
      internal static let hairIdolMBlue = ImageAsset(name: "hair_idol_m_blue")
      internal static let hairIdolMCarrot = ImageAsset(name: "hair_idol_m_carrot")
      internal static let hairIdolMChestnut = ImageAsset(name: "hair_idol_m_chestnut")
      internal static let hairIdolMDarkBrown = ImageAsset(name: "hair_idol_m_dark_brown")
      internal static let hairIdolMDarkGray = ImageAsset(name: "hair_idol_m_dark_gray")
      internal static let hairIdolMGinger = ImageAsset(name: "hair_idol_m_ginger")
      internal static let hairIdolMGold = ImageAsset(name: "hair_idol_m_gold")
      internal static let hairIdolMGray = ImageAsset(name: "hair_idol_m_gray")
      internal static let hairIdolMGreen = ImageAsset(name: "hair_idol_m_green")
      internal static let hairIdolMLightBrown = ImageAsset(name: "hair_idol_m_light_brown")
      internal static let hairIdolMNavy = ImageAsset(name: "hair_idol_m_navy")
      internal static let hairIdolMOrange = ImageAsset(name: "hair_idol_m_orange")
      internal static let hairIdolMPink = ImageAsset(name: "hair_idol_m_pink")
      internal static let hairIdolMPlatinum = ImageAsset(name: "hair_idol_m_platinum")
      internal static let hairIdolMPurple = ImageAsset(name: "hair_idol_m_purple")
      internal static let hairIdolMRaven = ImageAsset(name: "hair_idol_m_raven")
      internal static let hairIdolMRed = ImageAsset(name: "hair_idol_m_red")
      internal static let hairIdolMRedhead = ImageAsset(name: "hair_idol_m_redhead")
      internal static let hairIdolMRose = ImageAsset(name: "hair_idol_m_rose")
      internal static let hairIdolMSandy = ImageAsset(name: "hair_idol_m_sandy")
      internal static let hairIdolMStrawberry = ImageAsset(name: "hair_idol_m_strawberry")
      internal static let hairIdolMViolet = ImageAsset(name: "hair_idol_m_violet")
      internal static let hairIdolMWhite = ImageAsset(name: "hair_idol_m_white")
      internal static let hairMessyFAsh = ImageAsset(name: "hair_messy_f_ash")
      internal static let hairMessyFBlack = ImageAsset(name: "hair_messy_f_black")
      internal static let hairMessyFBlonde = ImageAsset(name: "hair_messy_f_blonde")
      internal static let hairMessyFBlue = ImageAsset(name: "hair_messy_f_blue")
      internal static let hairMessyFCarrot = ImageAsset(name: "hair_messy_f_carrot")
      internal static let hairMessyFChestnut = ImageAsset(name: "hair_messy_f_chestnut")
      internal static let hairMessyFDarkBrown = ImageAsset(name: "hair_messy_f_dark_brown")
      internal static let hairMessyFDarkGray = ImageAsset(name: "hair_messy_f_dark_gray")
      internal static let hairMessyFGinger = ImageAsset(name: "hair_messy_f_ginger")
      internal static let hairMessyFGold = ImageAsset(name: "hair_messy_f_gold")
      internal static let hairMessyFGray = ImageAsset(name: "hair_messy_f_gray")
      internal static let hairMessyFGreen = ImageAsset(name: "hair_messy_f_green")
      internal static let hairMessyFLightBrown = ImageAsset(name: "hair_messy_f_light_brown")
      internal static let hairMessyFNavy = ImageAsset(name: "hair_messy_f_navy")
      internal static let hairMessyFOrange = ImageAsset(name: "hair_messy_f_orange")
      internal static let hairMessyFPink = ImageAsset(name: "hair_messy_f_pink")
      internal static let hairMessyFPlatinum = ImageAsset(name: "hair_messy_f_platinum")
      internal static let hairMessyFPurple = ImageAsset(name: "hair_messy_f_purple")
      internal static let hairMessyFRaven = ImageAsset(name: "hair_messy_f_raven")
      internal static let hairMessyFRed = ImageAsset(name: "hair_messy_f_red")
      internal static let hairMessyFRedhead = ImageAsset(name: "hair_messy_f_redhead")
      internal static let hairMessyFRose = ImageAsset(name: "hair_messy_f_rose")
      internal static let hairMessyFSandy = ImageAsset(name: "hair_messy_f_sandy")
      internal static let hairMessyFStrawberry = ImageAsset(name: "hair_messy_f_strawberry")
      internal static let hairMessyFViolet = ImageAsset(name: "hair_messy_f_violet")
      internal static let hairMessyFWhite = ImageAsset(name: "hair_messy_f_white")
      internal static let hairMessyMAsh = ImageAsset(name: "hair_messy_m_ash")
      internal static let hairMessyMBlack = ImageAsset(name: "hair_messy_m_black")
      internal static let hairMessyMBlonde = ImageAsset(name: "hair_messy_m_blonde")
      internal static let hairMessyMBlue = ImageAsset(name: "hair_messy_m_blue")
      internal static let hairMessyMCarrot = ImageAsset(name: "hair_messy_m_carrot")
      internal static let hairMessyMChestnut = ImageAsset(name: "hair_messy_m_chestnut")
      internal static let hairMessyMDarkBrown = ImageAsset(name: "hair_messy_m_dark_brown")
      internal static let hairMessyMDarkGray = ImageAsset(name: "hair_messy_m_dark_gray")
      internal static let hairMessyMGinger = ImageAsset(name: "hair_messy_m_ginger")
      internal static let hairMessyMGold = ImageAsset(name: "hair_messy_m_gold")
      internal static let hairMessyMGray = ImageAsset(name: "hair_messy_m_gray")
      internal static let hairMessyMGreen = ImageAsset(name: "hair_messy_m_green")
      internal static let hairMessyMLightBrown = ImageAsset(name: "hair_messy_m_light_brown")
      internal static let hairMessyMNavy = ImageAsset(name: "hair_messy_m_navy")
      internal static let hairMessyMOrange = ImageAsset(name: "hair_messy_m_orange")
      internal static let hairMessyMPink = ImageAsset(name: "hair_messy_m_pink")
      internal static let hairMessyMPlatinum = ImageAsset(name: "hair_messy_m_platinum")
      internal static let hairMessyMPurple = ImageAsset(name: "hair_messy_m_purple")
      internal static let hairMessyMRaven = ImageAsset(name: "hair_messy_m_raven")
      internal static let hairMessyMRed = ImageAsset(name: "hair_messy_m_red")
      internal static let hairMessyMRedhead = ImageAsset(name: "hair_messy_m_redhead")
      internal static let hairMessyMRose = ImageAsset(name: "hair_messy_m_rose")
      internal static let hairMessyMSandy = ImageAsset(name: "hair_messy_m_sandy")
      internal static let hairMessyMStrawberry = ImageAsset(name: "hair_messy_m_strawberry")
      internal static let hairMessyMViolet = ImageAsset(name: "hair_messy_m_violet")
      internal static let hairMessyMWhite = ImageAsset(name: "hair_messy_m_white")
      internal static let hairPageFAsh = ImageAsset(name: "hair_page_f_ash")
      internal static let hairPageFBlack = ImageAsset(name: "hair_page_f_black")
      internal static let hairPageFBlonde = ImageAsset(name: "hair_page_f_blonde")
      internal static let hairPageFBlue = ImageAsset(name: "hair_page_f_blue")
      internal static let hairPageFCarrot = ImageAsset(name: "hair_page_f_carrot")
      internal static let hairPageFChestnut = ImageAsset(name: "hair_page_f_chestnut")
      internal static let hairPageFDarkBrown = ImageAsset(name: "hair_page_f_dark_brown")
      internal static let hairPageFDarkGray = ImageAsset(name: "hair_page_f_dark_gray")
      internal static let hairPageFGinger = ImageAsset(name: "hair_page_f_ginger")
      internal static let hairPageFGold = ImageAsset(name: "hair_page_f_gold")
      internal static let hairPageFGray = ImageAsset(name: "hair_page_f_gray")
      internal static let hairPageFGreen = ImageAsset(name: "hair_page_f_green")
      internal static let hairPageFLightBrown = ImageAsset(name: "hair_page_f_light_brown")
      internal static let hairPageFNavy = ImageAsset(name: "hair_page_f_navy")
      internal static let hairPageFOrange = ImageAsset(name: "hair_page_f_orange")
      internal static let hairPageFPink = ImageAsset(name: "hair_page_f_pink")
      internal static let hairPageFPlatinum = ImageAsset(name: "hair_page_f_platinum")
      internal static let hairPageFPurple = ImageAsset(name: "hair_page_f_purple")
      internal static let hairPageFRaven = ImageAsset(name: "hair_page_f_raven")
      internal static let hairPageFRed = ImageAsset(name: "hair_page_f_red")
      internal static let hairPageFRedhead = ImageAsset(name: "hair_page_f_redhead")
      internal static let hairPageFRose = ImageAsset(name: "hair_page_f_rose")
      internal static let hairPageFSandy = ImageAsset(name: "hair_page_f_sandy")
      internal static let hairPageFStrawberry = ImageAsset(name: "hair_page_f_strawberry")
      internal static let hairPageFViolet = ImageAsset(name: "hair_page_f_violet")
      internal static let hairPageFWhite = ImageAsset(name: "hair_page_f_white")
      internal static let hairPageMAsh = ImageAsset(name: "hair_page_m_ash")
      internal static let hairPageMBlack = ImageAsset(name: "hair_page_m_black")
      internal static let hairPageMBlonde = ImageAsset(name: "hair_page_m_blonde")
      internal static let hairPageMBlue = ImageAsset(name: "hair_page_m_blue")
      internal static let hairPageMCarrot = ImageAsset(name: "hair_page_m_carrot")
      internal static let hairPageMChestnut = ImageAsset(name: "hair_page_m_chestnut")
      internal static let hairPageMDarkBrown = ImageAsset(name: "hair_page_m_dark_brown")
      internal static let hairPageMDarkGray = ImageAsset(name: "hair_page_m_dark_gray")
      internal static let hairPageMGinger = ImageAsset(name: "hair_page_m_ginger")
      internal static let hairPageMGold = ImageAsset(name: "hair_page_m_gold")
      internal static let hairPageMGray = ImageAsset(name: "hair_page_m_gray")
      internal static let hairPageMGreen = ImageAsset(name: "hair_page_m_green")
      internal static let hairPageMLightBrown = ImageAsset(name: "hair_page_m_light_brown")
      internal static let hairPageMNavy = ImageAsset(name: "hair_page_m_navy")
      internal static let hairPageMOrange = ImageAsset(name: "hair_page_m_orange")
      internal static let hairPageMPink = ImageAsset(name: "hair_page_m_pink")
      internal static let hairPageMPlatinum = ImageAsset(name: "hair_page_m_platinum")
      internal static let hairPageMPurple = ImageAsset(name: "hair_page_m_purple")
      internal static let hairPageMRaven = ImageAsset(name: "hair_page_m_raven")
      internal static let hairPageMRed = ImageAsset(name: "hair_page_m_red")
      internal static let hairPageMRedhead = ImageAsset(name: "hair_page_m_redhead")
      internal static let hairPageMRose = ImageAsset(name: "hair_page_m_rose")
      internal static let hairPageMSandy = ImageAsset(name: "hair_page_m_sandy")
      internal static let hairPageMStrawberry = ImageAsset(name: "hair_page_m_strawberry")
      internal static let hairPageMViolet = ImageAsset(name: "hair_page_m_violet")
      internal static let hairPageMWhite = ImageAsset(name: "hair_page_m_white")
      internal static let hairPixieFAsh = ImageAsset(name: "hair_pixie_f_ash")
      internal static let hairPixieFBlack = ImageAsset(name: "hair_pixie_f_black")
      internal static let hairPixieFBlonde = ImageAsset(name: "hair_pixie_f_blonde")
      internal static let hairPixieFBlue = ImageAsset(name: "hair_pixie_f_blue")
      internal static let hairPixieFCarrot = ImageAsset(name: "hair_pixie_f_carrot")
      internal static let hairPixieFChestnut = ImageAsset(name: "hair_pixie_f_chestnut")
      internal static let hairPixieFDarkBrown = ImageAsset(name: "hair_pixie_f_dark_brown")
      internal static let hairPixieFDarkGray = ImageAsset(name: "hair_pixie_f_dark_gray")
      internal static let hairPixieFGinger = ImageAsset(name: "hair_pixie_f_ginger")
      internal static let hairPixieFGold = ImageAsset(name: "hair_pixie_f_gold")
      internal static let hairPixieFGray = ImageAsset(name: "hair_pixie_f_gray")
      internal static let hairPixieFGreen = ImageAsset(name: "hair_pixie_f_green")
      internal static let hairPixieFLightBrown = ImageAsset(name: "hair_pixie_f_light_brown")
      internal static let hairPixieFNavy = ImageAsset(name: "hair_pixie_f_navy")
      internal static let hairPixieFOrange = ImageAsset(name: "hair_pixie_f_orange")
      internal static let hairPixieFPink = ImageAsset(name: "hair_pixie_f_pink")
      internal static let hairPixieFPlatinum = ImageAsset(name: "hair_pixie_f_platinum")
      internal static let hairPixieFPurple = ImageAsset(name: "hair_pixie_f_purple")
      internal static let hairPixieFRaven = ImageAsset(name: "hair_pixie_f_raven")
      internal static let hairPixieFRed = ImageAsset(name: "hair_pixie_f_red")
      internal static let hairPixieFRedhead = ImageAsset(name: "hair_pixie_f_redhead")
      internal static let hairPixieFRose = ImageAsset(name: "hair_pixie_f_rose")
      internal static let hairPixieFSandy = ImageAsset(name: "hair_pixie_f_sandy")
      internal static let hairPixieFStrawberry = ImageAsset(name: "hair_pixie_f_strawberry")
      internal static let hairPixieFViolet = ImageAsset(name: "hair_pixie_f_violet")
      internal static let hairPixieFWhite = ImageAsset(name: "hair_pixie_f_white")
      internal static let hairPixieMAsh = ImageAsset(name: "hair_pixie_m_ash")
      internal static let hairPixieMBlack = ImageAsset(name: "hair_pixie_m_black")
      internal static let hairPixieMBlonde = ImageAsset(name: "hair_pixie_m_blonde")
      internal static let hairPixieMBlue = ImageAsset(name: "hair_pixie_m_blue")
      internal static let hairPixieMCarrot = ImageAsset(name: "hair_pixie_m_carrot")
      internal static let hairPixieMChestnut = ImageAsset(name: "hair_pixie_m_chestnut")
      internal static let hairPixieMDarkBrown = ImageAsset(name: "hair_pixie_m_dark_brown")
      internal static let hairPixieMDarkGray = ImageAsset(name: "hair_pixie_m_dark_gray")
      internal static let hairPixieMGinger = ImageAsset(name: "hair_pixie_m_ginger")
      internal static let hairPixieMGold = ImageAsset(name: "hair_pixie_m_gold")
      internal static let hairPixieMGray = ImageAsset(name: "hair_pixie_m_gray")
      internal static let hairPixieMGreen = ImageAsset(name: "hair_pixie_m_green")
      internal static let hairPixieMLightBrown = ImageAsset(name: "hair_pixie_m_light_brown")
      internal static let hairPixieMNavy = ImageAsset(name: "hair_pixie_m_navy")
      internal static let hairPixieMOrange = ImageAsset(name: "hair_pixie_m_orange")
      internal static let hairPixieMPink = ImageAsset(name: "hair_pixie_m_pink")
      internal static let hairPixieMPlatinum = ImageAsset(name: "hair_pixie_m_platinum")
      internal static let hairPixieMPurple = ImageAsset(name: "hair_pixie_m_purple")
      internal static let hairPixieMRaven = ImageAsset(name: "hair_pixie_m_raven")
      internal static let hairPixieMRed = ImageAsset(name: "hair_pixie_m_red")
      internal static let hairPixieMRedhead = ImageAsset(name: "hair_pixie_m_redhead")
      internal static let hairPixieMRose = ImageAsset(name: "hair_pixie_m_rose")
      internal static let hairPixieMSandy = ImageAsset(name: "hair_pixie_m_sandy")
      internal static let hairPixieMStrawberry = ImageAsset(name: "hair_pixie_m_strawberry")
      internal static let hairPixieMViolet = ImageAsset(name: "hair_pixie_m_violet")
      internal static let hairPixieMWhite = ImageAsset(name: "hair_pixie_m_white")
      internal static let hairPrincessFAsh = ImageAsset(name: "hair_princess_f_ash")
      internal static let hairPrincessFBlack = ImageAsset(name: "hair_princess_f_black")
      internal static let hairPrincessFBlonde = ImageAsset(name: "hair_princess_f_blonde")
      internal static let hairPrincessFBlue = ImageAsset(name: "hair_princess_f_blue")
      internal static let hairPrincessFCarrot = ImageAsset(name: "hair_princess_f_carrot")
      internal static let hairPrincessFChestnut = ImageAsset(name: "hair_princess_f_chestnut")
      internal static let hairPrincessFDarkBrown = ImageAsset(name: "hair_princess_f_dark_brown")
      internal static let hairPrincessFDarkGray = ImageAsset(name: "hair_princess_f_dark_gray")
      internal static let hairPrincessFGinger = ImageAsset(name: "hair_princess_f_ginger")
      internal static let hairPrincessFGold = ImageAsset(name: "hair_princess_f_gold")
      internal static let hairPrincessFGray = ImageAsset(name: "hair_princess_f_gray")
      internal static let hairPrincessFGreen = ImageAsset(name: "hair_princess_f_green")
      internal static let hairPrincessFLightBrown = ImageAsset(name: "hair_princess_f_light_brown")
      internal static let hairPrincessFNavy = ImageAsset(name: "hair_princess_f_navy")
      internal static let hairPrincessFOrange = ImageAsset(name: "hair_princess_f_orange")
      internal static let hairPrincessFPink = ImageAsset(name: "hair_princess_f_pink")
      internal static let hairPrincessFPlatinum = ImageAsset(name: "hair_princess_f_platinum")
      internal static let hairPrincessFPurple = ImageAsset(name: "hair_princess_f_purple")
      internal static let hairPrincessFRaven = ImageAsset(name: "hair_princess_f_raven")
      internal static let hairPrincessFRed = ImageAsset(name: "hair_princess_f_red")
      internal static let hairPrincessFRedhead = ImageAsset(name: "hair_princess_f_redhead")
      internal static let hairPrincessFRose = ImageAsset(name: "hair_princess_f_rose")
      internal static let hairPrincessFSandy = ImageAsset(name: "hair_princess_f_sandy")
      internal static let hairPrincessFStrawberry = ImageAsset(name: "hair_princess_f_strawberry")
      internal static let hairPrincessFViolet = ImageAsset(name: "hair_princess_f_violet")
      internal static let hairPrincessFWhite = ImageAsset(name: "hair_princess_f_white")
      internal static let hairPrincessMAsh = ImageAsset(name: "hair_princess_m_ash")
      internal static let hairPrincessMBlack = ImageAsset(name: "hair_princess_m_black")
      internal static let hairPrincessMBlonde = ImageAsset(name: "hair_princess_m_blonde")
      internal static let hairPrincessMBlue = ImageAsset(name: "hair_princess_m_blue")
      internal static let hairPrincessMCarrot = ImageAsset(name: "hair_princess_m_carrot")
      internal static let hairPrincessMChestnut = ImageAsset(name: "hair_princess_m_chestnut")
      internal static let hairPrincessMDarkBrown = ImageAsset(name: "hair_princess_m_dark_brown")
      internal static let hairPrincessMDarkGray = ImageAsset(name: "hair_princess_m_dark_gray")
      internal static let hairPrincessMGinger = ImageAsset(name: "hair_princess_m_ginger")
      internal static let hairPrincessMGold = ImageAsset(name: "hair_princess_m_gold")
      internal static let hairPrincessMGray = ImageAsset(name: "hair_princess_m_gray")
      internal static let hairPrincessMGreen = ImageAsset(name: "hair_princess_m_green")
      internal static let hairPrincessMLightBrown = ImageAsset(name: "hair_princess_m_light_brown")
      internal static let hairPrincessMNavy = ImageAsset(name: "hair_princess_m_navy")
      internal static let hairPrincessMOrange = ImageAsset(name: "hair_princess_m_orange")
      internal static let hairPrincessMPink = ImageAsset(name: "hair_princess_m_pink")
      internal static let hairPrincessMPlatinum = ImageAsset(name: "hair_princess_m_platinum")
      internal static let hairPrincessMPurple = ImageAsset(name: "hair_princess_m_purple")
      internal static let hairPrincessMRaven = ImageAsset(name: "hair_princess_m_raven")
      internal static let hairPrincessMRed = ImageAsset(name: "hair_princess_m_red")
      internal static let hairPrincessMRedhead = ImageAsset(name: "hair_princess_m_redhead")
      internal static let hairPrincessMRose = ImageAsset(name: "hair_princess_m_rose")
      internal static let hairPrincessMSandy = ImageAsset(name: "hair_princess_m_sandy")
      internal static let hairPrincessMStrawberry = ImageAsset(name: "hair_princess_m_strawberry")
      internal static let hairPrincessMViolet = ImageAsset(name: "hair_princess_m_violet")
      internal static let hairPrincessMWhite = ImageAsset(name: "hair_princess_m_white")
      internal static let hairSpikedFAsh = ImageAsset(name: "hair_spiked_f_ash")
      internal static let hairSpikedFBlack = ImageAsset(name: "hair_spiked_f_black")
      internal static let hairSpikedFBlonde = ImageAsset(name: "hair_spiked_f_blonde")
      internal static let hairSpikedFBlue = ImageAsset(name: "hair_spiked_f_blue")
      internal static let hairSpikedFCarrot = ImageAsset(name: "hair_spiked_f_carrot")
      internal static let hairSpikedFChestnut = ImageAsset(name: "hair_spiked_f_chestnut")
      internal static let hairSpikedFDarkBrown = ImageAsset(name: "hair_spiked_f_dark_brown")
      internal static let hairSpikedFDarkGray = ImageAsset(name: "hair_spiked_f_dark_gray")
      internal static let hairSpikedFGinger = ImageAsset(name: "hair_spiked_f_ginger")
      internal static let hairSpikedFGold = ImageAsset(name: "hair_spiked_f_gold")
      internal static let hairSpikedFGray = ImageAsset(name: "hair_spiked_f_gray")
      internal static let hairSpikedFGreen = ImageAsset(name: "hair_spiked_f_green")
      internal static let hairSpikedFLightBrown = ImageAsset(name: "hair_spiked_f_light_brown")
      internal static let hairSpikedFNavy = ImageAsset(name: "hair_spiked_f_navy")
      internal static let hairSpikedFOrange = ImageAsset(name: "hair_spiked_f_orange")
      internal static let hairSpikedFPink = ImageAsset(name: "hair_spiked_f_pink")
      internal static let hairSpikedFPlatinum = ImageAsset(name: "hair_spiked_f_platinum")
      internal static let hairSpikedFPurple = ImageAsset(name: "hair_spiked_f_purple")
      internal static let hairSpikedFRaven = ImageAsset(name: "hair_spiked_f_raven")
      internal static let hairSpikedFRed = ImageAsset(name: "hair_spiked_f_red")
      internal static let hairSpikedFRedhead = ImageAsset(name: "hair_spiked_f_redhead")
      internal static let hairSpikedFRose = ImageAsset(name: "hair_spiked_f_rose")
      internal static let hairSpikedFSandy = ImageAsset(name: "hair_spiked_f_sandy")
      internal static let hairSpikedFStrawberry = ImageAsset(name: "hair_spiked_f_strawberry")
      internal static let hairSpikedFViolet = ImageAsset(name: "hair_spiked_f_violet")
      internal static let hairSpikedFWhite = ImageAsset(name: "hair_spiked_f_white")
      internal static let hairSpikedMAsh = ImageAsset(name: "hair_spiked_m_ash")
      internal static let hairSpikedMBlack = ImageAsset(name: "hair_spiked_m_black")
      internal static let hairSpikedMBlonde = ImageAsset(name: "hair_spiked_m_blonde")
      internal static let hairSpikedMBlue = ImageAsset(name: "hair_spiked_m_blue")
      internal static let hairSpikedMCarrot = ImageAsset(name: "hair_spiked_m_carrot")
      internal static let hairSpikedMChestnut = ImageAsset(name: "hair_spiked_m_chestnut")
      internal static let hairSpikedMDarkBrown = ImageAsset(name: "hair_spiked_m_dark_brown")
      internal static let hairSpikedMDarkGray = ImageAsset(name: "hair_spiked_m_dark_gray")
      internal static let hairSpikedMGinger = ImageAsset(name: "hair_spiked_m_ginger")
      internal static let hairSpikedMGold = ImageAsset(name: "hair_spiked_m_gold")
      internal static let hairSpikedMGray = ImageAsset(name: "hair_spiked_m_gray")
      internal static let hairSpikedMGreen = ImageAsset(name: "hair_spiked_m_green")
      internal static let hairSpikedMLightBrown = ImageAsset(name: "hair_spiked_m_light_brown")
      internal static let hairSpikedMNavy = ImageAsset(name: "hair_spiked_m_navy")
      internal static let hairSpikedMOrange = ImageAsset(name: "hair_spiked_m_orange")
      internal static let hairSpikedMPink = ImageAsset(name: "hair_spiked_m_pink")
      internal static let hairSpikedMPlatinum = ImageAsset(name: "hair_spiked_m_platinum")
      internal static let hairSpikedMPurple = ImageAsset(name: "hair_spiked_m_purple")
      internal static let hairSpikedMRaven = ImageAsset(name: "hair_spiked_m_raven")
      internal static let hairSpikedMRed = ImageAsset(name: "hair_spiked_m_red")
      internal static let hairSpikedMRedhead = ImageAsset(name: "hair_spiked_m_redhead")
      internal static let hairSpikedMRose = ImageAsset(name: "hair_spiked_m_rose")
      internal static let hairSpikedMSandy = ImageAsset(name: "hair_spiked_m_sandy")
      internal static let hairSpikedMStrawberry = ImageAsset(name: "hair_spiked_m_strawberry")
      internal static let hairSpikedMViolet = ImageAsset(name: "hair_spiked_m_violet")
      internal static let hairSpikedMWhite = ImageAsset(name: "hair_spiked_m_white")
    }
    internal enum Head {
      internal static let headFAmber = ImageAsset(name: "head_f_amber")
      internal static let headFBlack = ImageAsset(name: "head_f_black")
      internal static let headFBrown = ImageAsset(name: "head_f_brown")
      internal static let headFLight = ImageAsset(name: "head_f_light")
      internal static let headMAmber = ImageAsset(name: "head_m_amber")
      internal static let headMBlack = ImageAsset(name: "head_m_black")
      internal static let headMBrown = ImageAsset(name: "head_m_brown")
      internal static let headMLight = ImageAsset(name: "head_m_light")
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
      internal enum Hair {
        internal static let hAsh = ColorAsset(name: "hAsh")
        internal static let hBlack = ColorAsset(name: "hBlack")
        internal static let hBlonde = ColorAsset(name: "hBlonde")
        internal static let hBlue = ColorAsset(name: "hBlue")
        internal static let hCarrot = ColorAsset(name: "hCarrot")
        internal static let hChestnut = ColorAsset(name: "hChestnut")
        internal static let hDarkBrown = ColorAsset(name: "hDarkBrown")
        internal static let hDarkGray = ColorAsset(name: "hDarkGray")
        internal static let hGinger = ColorAsset(name: "hGinger")
        internal static let hGold = ColorAsset(name: "hGold")
        internal static let hGray = ColorAsset(name: "hGray")
        internal static let hGreen = ColorAsset(name: "hGreen")
        internal static let hLightBrown = ColorAsset(name: "hLightBrown")
        internal static let hNavy = ColorAsset(name: "hNavy")
        internal static let hOrange = ColorAsset(name: "hOrange")
        internal static let hPink = ColorAsset(name: "hPink")
        internal static let hPlatinum = ColorAsset(name: "hPlatinum")
        internal static let hPurple = ColorAsset(name: "hPurple")
        internal static let hRaven = ColorAsset(name: "hRaven")
        internal static let hRed = ColorAsset(name: "hRed")
        internal static let hRedhead = ColorAsset(name: "hRedhead")
        internal static let hRose = ColorAsset(name: "hRose")
        internal static let hSandy = ColorAsset(name: "hSandy")
        internal static let hStrawberry = ColorAsset(name: "hStrawberry")
        internal static let hViolet = ColorAsset(name: "hViolet")
        internal static let hWhite = ColorAsset(name: "hWhite")
      }
      internal enum Skin {
        internal static let sAmber = ColorAsset(name: "sAmber")
        internal static let sBlack = ColorAsset(name: "sBlack")
        internal static let sBrown = ColorAsset(name: "sBrown")
        internal static let sLight = ColorAsset(name: "sLight")
      }
    }
    internal static let mainBackground = ColorAsset(name: "mainBackground")
    internal static let primaryButtonText = ColorAsset(name: "primaryButtonText")
    internal static let textBeige = ColorAsset(name: "textBeige")
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
